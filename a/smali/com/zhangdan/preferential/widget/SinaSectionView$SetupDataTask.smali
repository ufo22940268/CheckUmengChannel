.class Lcom/zhangdan/preferential/widget/SinaSectionView$SetupDataTask;
.super Landroid/os/AsyncTask;
.source "SinaSectionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/widget/SinaSectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/zhangdan/preferential/data/model/WeiboPoiInfo;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/widget/SinaSectionView;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/widget/SinaSectionView;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/zhangdan/preferential/widget/SinaSectionView$SetupDataTask;->this$0:Lcom/zhangdan/preferential/widget/SinaSectionView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/widget/SinaSectionView;Lcom/zhangdan/preferential/widget/SinaSectionView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/widget/SinaSectionView$SetupDataTask;-><init>(Lcom/zhangdan/preferential/widget/SinaSectionView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    check-cast p1, [Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/widget/SinaSectionView$SetupDataTask;->doInBackground([Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/WeiboPoiInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, params:[Ljava/util/List;,"[Ljava/util/List<Lcom/zhangdan/preferential/data/model/WeiboPoiInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v0, datas:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;>;"
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/preferential/data/model/WeiboPoiInfo;

    .line 77
    .local v3, info:Lcom/zhangdan/preferential/data/model/WeiboPoiInfo;
    new-instance v1, Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;

    iget-object v4, p0, Lcom/zhangdan/preferential/widget/SinaSectionView$SetupDataTask;->this$0:Lcom/zhangdan/preferential/widget/SinaSectionView;

    invoke-direct {v1, v4}, Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;-><init>(Lcom/zhangdan/preferential/widget/SinaSectionView;)V

    .line 78
    .local v1, holder:Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;
    new-instance v4, Lcom/novoda/imageloader/core/util/DirectLoader;

    invoke-direct {v4}, Lcom/novoda/imageloader/core/util/DirectLoader;-><init>()V

    iget-object v5, v3, Lcom/zhangdan/preferential/data/model/WeiboPoiInfo;->portraitUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/novoda/imageloader/core/util/DirectLoader;->download(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/zhangdan/preferential/utils/BitmapUtils;->getCircularBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;->portrait:Landroid/graphics/Bitmap;

    .line 79
    new-instance v4, Lcom/novoda/imageloader/core/util/DirectLoader;

    invoke-direct {v4}, Lcom/novoda/imageloader/core/util/DirectLoader;-><init>()V

    iget-object v5, v3, Lcom/zhangdan/preferential/data/model/WeiboPoiInfo;->photoUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/novoda/imageloader/core/util/DirectLoader;->download(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;->photo:Landroid/graphics/Bitmap;

    .line 80
    iget-object v4, v3, Lcom/zhangdan/preferential/data/model/WeiboPoiInfo;->comment:Ljava/lang/String;

    iput-object v4, v1, Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;->comment:Ljava/lang/String;

    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    .end local v1           #holder:Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;
    .end local v3           #info:Lcom/zhangdan/preferential/data/model/WeiboPoiInfo;
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/widget/SinaSectionView$SetupDataTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, datas:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;>;"
    const v6, 0x7f030060

    const/4 v5, 0x0

    .line 88
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 89
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;

    .line 90
    .local v0, data:Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;
    iget-object v3, p0, Lcom/zhangdan/preferential/widget/SinaSectionView$SetupDataTask;->this$0:Lcom/zhangdan/preferential/widget/SinaSectionView;

    iget-object v3, v3, Lcom/zhangdan/preferential/widget/SinaSectionView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/preferential/widget/SinaSectionView$SetupDataTask;->this$0:Lcom/zhangdan/preferential/widget/SinaSectionView;

    #getter for: Lcom/zhangdan/preferential/widget/SinaSectionView;->mBadgeContainer:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/zhangdan/preferential/widget/SinaSectionView;->access$100(Lcom/zhangdan/preferential/widget/SinaSectionView;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v3, v6, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 91
    .local v2, iv:Landroid/widget/ImageView;
    iget-object v3, v0, Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;->portrait:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 92
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 93
    iget-object v3, p0, Lcom/zhangdan/preferential/widget/SinaSectionView$SetupDataTask;->this$0:Lcom/zhangdan/preferential/widget/SinaSectionView;

    #getter for: Lcom/zhangdan/preferential/widget/SinaSectionView;->mBadgeContainer:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/zhangdan/preferential/widget/SinaSectionView;->access$100(Lcom/zhangdan/preferential/widget/SinaSectionView;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    iget-object v3, p0, Lcom/zhangdan/preferential/widget/SinaSectionView$SetupDataTask;->this$0:Lcom/zhangdan/preferential/widget/SinaSectionView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v0           #data:Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;
    .end local v2           #iv:Landroid/widget/ImageView;
    :cond_0
    iget-object v3, p0, Lcom/zhangdan/preferential/widget/SinaSectionView$SetupDataTask;->this$0:Lcom/zhangdan/preferential/widget/SinaSectionView;

    iget-object v3, v3, Lcom/zhangdan/preferential/widget/SinaSectionView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/preferential/widget/SinaSectionView$SetupDataTask;->this$0:Lcom/zhangdan/preferential/widget/SinaSectionView;

    #getter for: Lcom/zhangdan/preferential/widget/SinaSectionView;->mBadgeContainer:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/zhangdan/preferential/widget/SinaSectionView;->access$100(Lcom/zhangdan/preferential/widget/SinaSectionView;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v3, v6, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 98
    .restart local v2       #iv:Landroid/widget/ImageView;
    const v3, 0x7f02039c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    iget-object v3, p0, Lcom/zhangdan/preferential/widget/SinaSectionView$SetupDataTask;->this$0:Lcom/zhangdan/preferential/widget/SinaSectionView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v3, p0, Lcom/zhangdan/preferential/widget/SinaSectionView$SetupDataTask;->this$0:Lcom/zhangdan/preferential/widget/SinaSectionView;

    #getter for: Lcom/zhangdan/preferential/widget/SinaSectionView;->mBadgeContainer:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/zhangdan/preferential/widget/SinaSectionView;->access$100(Lcom/zhangdan/preferential/widget/SinaSectionView;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 103
    iget-object v4, p0, Lcom/zhangdan/preferential/widget/SinaSectionView$SetupDataTask;->this$0:Lcom/zhangdan/preferential/widget/SinaSectionView;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;

    #calls: Lcom/zhangdan/preferential/widget/SinaSectionView;->updateContent(Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;)V
    invoke-static {v4, v3}, Lcom/zhangdan/preferential/widget/SinaSectionView;->access$200(Lcom/zhangdan/preferential/widget/SinaSectionView;Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;)V

    .line 106
    :cond_1
    iget-object v3, p0, Lcom/zhangdan/preferential/widget/SinaSectionView$SetupDataTask;->this$0:Lcom/zhangdan/preferential/widget/SinaSectionView;

    invoke-virtual {v3}, Lcom/zhangdan/preferential/widget/SinaSectionView;->showRightContainer()V

    .line 107
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/SinaSectionView$SetupDataTask;->this$0:Lcom/zhangdan/preferential/widget/SinaSectionView;

    #getter for: Lcom/zhangdan/preferential/widget/SinaSectionView;->mBadgeContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/zhangdan/preferential/widget/SinaSectionView;->access$100(Lcom/zhangdan/preferential/widget/SinaSectionView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 71
    return-void
.end method
