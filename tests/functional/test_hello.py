# tests the hello endpoint
def test_hello(client):
    response = client.post(
        "/hello",
        data=dict(name="Benni"),
        follow_redirects=True
    )

    assert response.status_code == 200
    assert b'Benni' in response.data