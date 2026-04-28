import requests

def lambda_handler(event, context):
    r = requests.get("https://api.github.com")
    return {
        "statusCode": 200,
        "body": "Hello from Lambda! GitHub API status: " + str(r.status_code)
    }