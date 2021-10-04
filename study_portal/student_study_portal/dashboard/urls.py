from django.urls import path
from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name = "home"),

    path('notes', views.notes, name = "notes"),
    path('delete_notes/<int:pk>', views.delete_notes, name = "delete-notes"),
    path('notes_detail/<int:pk>', views.NotesDetailView.as_view(), name = "notes-details"),

    path('home_work', views.home_work, name = "home_work"),
    path('update_homework/<int:pk>', views.homework_status, name = "update-homework"),
    path('delete_homework/<int:pk>', views.delete_homework, name = "delete-homework"),
    
    path('youtube', views.youtube, name = "youtube"),

    path('todo', views.todo, name = "todo"),

    ]