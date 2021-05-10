from django.shortcuts import render

# Create your views here.
def danny_posts(request):
    return render(request, 'dannyapp/postato.html', {})