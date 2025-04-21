# Variables
SRC=main.py
TEST=test_main.py
VENV=.venv

# Cibles
.PHONY: setup run tests fclean clean all

setup:
	@echo "[SETUP] Création de l'environnement virtuel..."
	python3 -m venv $(VENV)
	@echo "[SETUP] Installation des dépendances..."
	$(VENV)/bin/pip install -r requirements.txt || echo "Pas de requirements.txt, pas grave :)"

run:
	@echo "[RUN] Exécution du programme principal..."
	$(VENV)/bin/python $(SRC)

tests:
	@echo "[TEST] Lancement des tests..."
	$(VENV)/bin/python $(TEST)

fclean:
	@echo "[FCLEAN] Suppression de l'environnement virtuel..."
	rm -rf $(VENV)

clean:
	@echo "[CLEAN] Nettoyage des fichiers temporaires..."
	find . -name "*.pyc" -delete

all: setup run tests clean
