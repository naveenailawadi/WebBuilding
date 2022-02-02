from api import app
import time
import jwt

# make a constant for how long until timeout
TOKEN_SECONDS = 7200


def allowed_file(filename):
    return '.' in filename and \
        filename.rsplit('.', 1)[1] in app.config['UPLOAD_EXTENSIONS']


# make a function that creates tokens
def create_token(info_dict, exp=TOKEN_SECONDS):
    # add the expiration to the token
    info_dict['exp'] = time.time() + TOKEN_SECONDS

    # create the token
    token = jwt.encode(info_dict, app.config.get('SECRET_KEY'))

    # convert the token to utf-8
    token = token.decode('UTF-8')

    return token
