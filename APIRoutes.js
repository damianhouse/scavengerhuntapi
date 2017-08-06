/* Scavenger API routes file
After every response the access-token will change and you will have to save it for the next use
*/
//All routes/headers

{
    model: "user",
    type: "show",
    uid: appStore.uid
}

let buildURL = (object) => {
    if(object.model !== "auth" || object.model !== "user" || object.model !== "game" || object.model !== "player" || object.model !== "team" || object.model !== "question" || object.model !== "answer" || object.model !== "score") console.log("You must enter a valid model in the object")
    const siteURL = "https://scavengerhuntapi.herokuapp.com"
    const APIURL = '/v1/'
    if(object.model === 'auth') {
        if(object.type === 'sign_in') {
            return siteURL + '/auth/sign_in'
        } else {
            return siteURL + '/auth/validate_token'
        }
    } else {
        switch(object.type) {
            case "index":
                return siteURL + APIURL + object.model + 's'
                break;
            case "create":
                return siteURL + APIURL + object.model + 's'
                break;
            default:
                if(object.uid) {
                    return siteURL + APIURL + object.model + '/' + object.uid
                } else {
                    console.log("You must provide the uid in the user object")
                }
                break;
        }
    }
}

const SIGN_IN_HEADERS = {'Content-Type': 'application/json'}
const SIGN_IN_ROUTE = '/auth/sign_in'
const HEADERS = {'Content-Type': 'application/json',
                 'access-token': appStore.accessToken,
                 'client': CLIENT,
                 'uid': UID}
const VALIDATE_TOKEN_ROUTE = '/auth/validate_token'

// POST create user
const SIGN_UP_HEADERS = {'Content-Type': 'application/json'}
const SIGN_UP_ROUTE = '/v1/users'

// POST Sign up data
{
	"email": "test@test.com", 
	"password": "password",
	"password_confirmation": "password"
}

// Expected response 201

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
                 'access-token': appStore.accessToken,
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
