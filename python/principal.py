# Importando bibliotecas
from flask import Flask, request, render_template
from flaskext.mysql import MySQL
#from bd import *

app = Flask(__name__)
mysql = MySQL ()
mysql.init_app(app)

@app.route('/')
def principal():
    return render_template('index.html')

@app.route('/detalhar/<disciplina>')
def detalhar(disciplina):
    cursor= mysql.get_db().cursor()
    return render_template('logado.html', detalhe=get_detalhes(cursor,disciplina))
if __name__ == ' main ':
    app.run(debug=True)
