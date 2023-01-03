from django.shortcuts import render

# Create your views here.

from .models import Message

def contact(request):
    if not 'cuName' in request.POST:
        return render(request,'contact.html')
    else:    
        cuName = request.POST['cuName']
        email = request.POST['email']
        question = request.POST['question']
        content = request.POST['content']
        
        obj = Message.objects.create(name=cuName,email=email,subject=question,content=content)
        
        obj.save()
        
        return render(request,'contactok.html',locals())
