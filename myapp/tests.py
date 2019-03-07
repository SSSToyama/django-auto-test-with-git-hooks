from django.test import TestCase
from myapp.models import MyModel

class MyModelTestCase(TestCase):
    # fixturesディレクトリに定義したJSONファイル名を指定
    fixtures = ['mydata']

    def test_firstname_and_lastname(self):
        john = MyModel.objects.get(first_name='John')
        paul = MyModel.objects.get(first_name='Paul')
        self.assertEqual(john.last_name, 'Lennon')
        self.assertEqual(paul.last_name, 'McCartney')