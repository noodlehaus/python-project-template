from my_module.hello import hello


def test_hello():
    assert hello("World") == "Hello, World!"
