from django.urls import path
from . import views

urlpatterns = [
    path('', views.danny_posts, name='post_content'),
]