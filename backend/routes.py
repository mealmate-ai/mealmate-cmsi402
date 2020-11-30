import re
import json
from flask import request
from flask import current_app as app
from app import db
from datetime import datetime
from db_models import Account, Meal, Nutrition, FoodDetail


@app.route("/")
def hello():
    """ Prints hello world! """
    return "Hello World!"


# @app.route("/get-account", methods=["GET"])
# def new_route():
#     user_id = request.args.get("user_id")
#     return user_id


@app.route("/add-account", methods=["GET"])
def new_account():
    id = request.args.get("id")
    date_created = datetime.today().strftime("%Y-%m-%d")
    email = request.args.get("email", None)
    name = request.args.get("name", None)

    account = Account(id, date_created, name, email, "", "", "", "")
    db.session.add(account)
    db.session.commit()

    return "New Account {0}, {1}".format(account.id, account.name)


@app.route("/update-account/<account_id>", methods=["GET"])
def update_account(account_id):
    name = request.args.get("name", None)
    email = request.args.get("email", None)

    account_updating = db.session.query(Account).filter_by(id=account_id).first()
    account_updating.name = name if name else account_updating.name
    account_updating.email = email if email else account_updating.email

    db.session.commit()
    return "Updated Account {0}, {1}, {2} ".format(email, name, account_updating.name)


@app.route("/add-meal", methods=["GET"])
def new_meal():
    account_id = request.args.get("accountId")
    date_logged = datetime.today().strftime("%Y-%m-%d")
    category = request.args.get("category")

    meal_new = Meal(None, account_id, date_logged, category)
    db.session.add(meal_new)
    db.session.commit()

    return "New Meal {0}, {1}".format(meal_new.id, meal_new.category)


# # How to query from db? Where do we use nutritionix and where usda db?
# @app.route("/add-food-nut/<food_id>", methods=["GET"])
# def new_nut(food_id):
#     kcal = request.args.get("kcal")
#     protein_g = request.args.get("prot")
#     total_fat_g = request.args.get("fat")
#     total_carb_g = request.args.get("carb")

#     new_nut_food = Nutrition(food_id, kcal, protein_g, total_fat_g, total_carb_g)
#     db.session.add(new_nut_food)
#     db.session.commit()

#     return "New Food Item {0}, id {1} ".format(kcal, food_id)


@app.route("/query-foods", methods=["GET"])
def query_foods():
    query = request.args.get("query")
    foods = re.split("\s+|[,]", query)

    matches = {}
    items = []
    for food in foods:
        text = food.replace("'", "''")
        res = FoodDetail.query.filter(FoodDetail.processed_desc.contains(text)).all()
        items += res
        matches[text] = [item.food_id for item in res]
    print(matches, items)
    # for item in items:
    #     print(item)

    return "Foods in list: {} ".format(matches)