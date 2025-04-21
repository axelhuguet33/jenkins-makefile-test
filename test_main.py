from main import hello

def test_hello():
    assert hello() == "Hello, Jenkins!"
    print("[OK] Test réussi : hello() retourne bien 'Hello, Jenkins!'")

if __name__ == "__main__":
    test_hello()
