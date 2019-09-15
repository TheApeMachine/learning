from flask import Flask, render_template, request

app = Flask(__name__)

@app.route("/")
def index():
  # Adding a default value to a GET parameter.
  name = request.args.get("name", "Danny")

  # Rendering the template, passing in the parameters.
  return render_template("index.html", name=name)

@app.route("/form")
def form():
  return render_template("form.html")

@app.route("/register", methods=["POST"])
def register():
  name = request.form.get("name")
  dorm = request.form.get("dorm")

  if not name or not dorm:
    return "failure"

  return render_template("success.html")