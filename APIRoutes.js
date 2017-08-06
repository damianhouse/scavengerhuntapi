/* Scavenger API routes file
After every response the access-token will change and you will have to save it for the next use
*/

// POST Sign in
const SIGN_IN_HEADERS = {'Content-Type': 'application/json'}
const SIGN_IN_ROUTE = '/auth/sign_in'

// Sign in data
{"email": "test@test.com", "password": "testpassword1" }


// Expected response 
{
    "data": {
        "id": 1,
        "email": "test@test.com",
        "provider": "email",
        "uid": "test@test.com",
        "name": null,
        "nickname": null,
        "image": null,
        "type": "user"
    }
}

// Validate token - No data other than headers
// This headers constant is what will need to be passed for the rest of the API calls except sign_in and sign_out
const HEADERS = {'Content-Type': 'application/json',
                                'access-token': accessToken,
                                'client': CLIENT,
                                'uid': UID}
const VALIDATE_TOKEN_ROUTE = '/auth/validate_token'

// GET Validate token expected response
{
    "success": true,
    "data": {
        "id": 1,
        "provider": "email",
        "uid": "test@test.com",
        "name": null,
        "nickname": null,
        "image": null,
        "email": "test@test.com",
        "type": "user"
    }
}

// GET All users
const ALL_USERS = '/v1/users'

// GET All users expected response
{
    "data": [
        {
            "id": "1",
            "type": "users",
            "attributes": {
                "name": null,
                "email": "test@test.com"
            }
        }
    ]
}

// GET a user
const USER_PROFILE = '/v1/users/' + USER_ID

// GET a user expected response
{
    "data": {
        "id": "1",
        "type": "users",
        "attributes": {
            "name": null,
            "email": "test@test.com"
        }
    }
} 
