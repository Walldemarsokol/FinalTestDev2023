from Database.DB_config import config_db_init
from Database.DB_creating import create_db_human_friends
from Models.camels import Camels
from Models.cats import Cats
from Models.dogs import Dogs
from Models.donkeys import Donkeys
from Models.hamsters import Hamsters
from Models.horses import Horses
from View.Menu import ls_menu

if __name__ == '__main__':
    print('\nPets accounting started')

    config = config_db_init()
    dog_1 = Dogs('Шарик', '2018-06-12', 'come here')
    cat_1 = Cats('Мурзик', '2023-05-19', 'come here')
    hamster_1 = Hamsters('Прошка', '2016-07-10', 'run')
    camel_1 = Camels('Шустрый', '2018-03-12', 'transport')
    donkey_1 = Donkeys('Высокий', '2023-02-19', 'transport')
    horse_1 = Horses('Упертый', '2016-07-02', 'jump')
    create_db_human_friends(config)
    ls_menu(config)