from django.core.checks import messages
from django.shortcuts import redirect, render
from . forms import *
from django.contrib import messages
from django.views import generic
from youtubesearchpython import VideosSearch

# Create your views here.

def home(request):
    return render(request, 'dashboard/home.html')


def notes(request):
    if request.method == "POST":
        form = NotesForm(request.POST) 
        if form.is_valid():
            notes = Notes(
                user = request.user,
                title = request.POST['title'],
                description = request.POST['description']) 
            notes.save()
        messages.success(request, f"Notes Added From { request.user.username } Successfully!")    

    else:
        form = NotesForm()

    notes = Notes.objects.filter(user=request.user)
    context = {
        'notes' : notes,
        'form' : form
    }
    return render(request, 'dashboard/notes.html',context)  


def delete_notes(request, pk=None):
    Notes.objects.get(id=pk).delete()
    return redirect("notes")


class NotesDetailView(generic.DetailView):
    model = Notes



def home_work(request):
    if request.method == "POST":
        form = HomeworkForm(request.POST)
        
        if form.is_valid():
            try:
                finished = request.POST['is_finished']
                if finished == 'on':
                    finished = True
                else:
                    finished = False
            except:
                finished = False       

            homeworks = Homework(
                user = request.user,
                subject = request.POST['subject'],
                title = request.POST['title'],
                description = request.POST['description'],
                due = request.POST['due'],
                is_finished = finished
                )         
            homeworks.save()
            messages.success(request, f"{ request.user.username } Added Home Works Successfully!")

    else:

        form = HomeworkForm()
    
    homeworks = Homework.objects.filter(user=request.user)

    if len(homeworks) == 0:
        homework_done = True
    else:
        homework_done = False

    context = {
        'homeworks' : homeworks,
        'homeworks_done': homework_done,
        'form' : form
    }
    return render(request, 'dashboard/homework.html', context)


def homework_status(request, pk = None):
    homework = Homework.objects.get(id = pk)

    if homework.is_finished == True:
        homework.is_finished = False
    else:
        homework.is_finished = True

    homework.save()
    return redirect('home_work')    


def delete_homework(request, pk=None):
    Homework.objects.get(id=pk).delete()
    return redirect("home_work")    


def youtube(request):
    if request.method == 'POST':
        form = DashboardForm(request.POST)
        text = request.POST['text']
        video = VideosSearch(text, limit=10)
        
        result_list = []
        for i in video.result()['result']:
            result_dict = {
                'input' : 'text',
                'title' : i['title'],
                'duration' : i['duration'],
                'thumbnail' : i['thumbnails'][0]['url'],
                'channel' : i['channel']['name'],
                'link' : i['link'],
                'views' : i['viewCount']['short'],
                'published' : i['publishedTime']
            }
            desc = ''
            if i['descriptionSnippet']:
                for j in i['descriptionSnippet']:
                    desc += j['text']
            result_dict['description'] = desc
            result_list.append(result_dict)       

        
            for i in result_list:
                print(i.get('description'))

            context = {
                'form' : form,
                'result_dict' : result_dict
            }

        return render(request, 'dashboard/yt.html', context)

    else:    
        form = DashboardForm()

    context = {
        'form' : form
    }

    return render(request, 'dashboard/yt.html', context)


def todo(request):
    if request.method == "POST":
        form = TodoForm(request.POST)

        if form.is_valid():
            try:
                finished = request.POST['is_finished']
                if finished == 'on':
                    finished = True
                else:
                    finished = False
            except:
                finished = False   


            todos = Todo(
                user = request.user,
                title = request.POST['title'],
                is_finished = finished
                )           

            todos.save()
            messages.success(request, f"{ request.user.username } Added TODO Successfully!")    

    else:

        form = TodoForm()

    todos = Todo.objects.filter(user=request.user)

    if len(todos) == 0:
        todos_done = True
    else:
        todos_done = False

    context = {
        'todos' : todo,
        'todos_done': todos_done,
        'form' : form
    }
    return render(request, 'dashboard/todo.html', context)    



def register(request):
    if request.method == "POST":
        form = UserRegistrationForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            messages.success(request, f"Account created for { request.user.username }")
            return redirect("login")
    else:
        form = UserCreationForm()
    
    context = {
        'form' : form
    }
    return render(request, 'dashboard/register.html', context)