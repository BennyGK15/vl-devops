from app import generate_name

def test_hello():
    result = generate_name("Benni")

    assert result == "Hello Benni"