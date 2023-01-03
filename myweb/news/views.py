from django.shortcuts import render

# Create your views here.

from .models import News

from django.core.paginator import Paginator,EmptyPage,PageNotAnInteger


def news(request):
    
    data = News.objects.all().order_by('id')
    paginator = Paginator(data,9)
    page = request.GET.get('page')
    try:
        pageData = paginator.page(page)
    except PageNotAnInteger:
        pageData = paginator.page(1)
    except EmptyPage:
        pageData = paginator.page(paginator.num_pages)
    
    content = {"newsList":pageData}
    
    return render(request,'news.html',content)


def index(request):
    return render(request,'index.html')