.class final Lcom/zhangdan/preferential/widget/j;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/widget/SinaSectionView;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/widget/SinaSectionView;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/widget/j;->a:Lcom/zhangdan/preferential/widget/SinaSectionView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/widget/SinaSectionView;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/widget/j;-><init>(Lcom/zhangdan/preferential/widget/SinaSectionView;)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    const/4 v11, 0x0

    check-cast p1, [Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aget-object v0, p1, v11

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/p;

    new-instance v5, Lcom/zhangdan/preferential/widget/i;

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/j;->a:Lcom/zhangdan/preferential/widget/SinaSectionView;

    invoke-direct {v5, v1}, Lcom/zhangdan/preferential/widget/i;-><init>(Lcom/zhangdan/preferential/widget/SinaSectionView;)V

    new-instance v1, Lcom/a/a/a/h/b;

    invoke-direct {v1}, Lcom/a/a/a/h/b;-><init>()V

    iget-object v2, v0, Lcom/zhangdan/preferential/data/model/p;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/a/a/a/h/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v9, v11, v11, v2, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-le v2, v10, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    :goto_2
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v7, v11, v11, v11, v11}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v10, -0xbdbdbe

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v2, v2, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v7, v6, v9, v9, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iput-object v1, v5, Lcom/zhangdan/preferential/widget/i;->a:Landroid/graphics/Bitmap;

    new-instance v1, Lcom/a/a/a/h/b;

    invoke-direct {v1}, Lcom/a/a/a/h/b;-><init>()V

    iget-object v2, v0, Lcom/zhangdan/preferential/data/model/p;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/a/a/a/h/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v5, Lcom/zhangdan/preferential/widget/i;->b:Landroid/graphics/Bitmap;

    iget-object v0, v0, Lcom/zhangdan/preferential/data/model/p;->b:Ljava/lang/String;

    iput-object v0, v5, Lcom/zhangdan/preferential/widget/i;->c:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    goto :goto_2
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6

    const v5, 0x7f03005b

    const/4 v3, 0x0

    check-cast p1, Ljava/util/List;

    move v2, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lt v2, v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/j;->a:Lcom/zhangdan/preferential/widget/SinaSectionView;

    iget-object v0, v0, Lcom/zhangdan/preferential/widget/SinaSectionView;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/j;->a:Lcom/zhangdan/preferential/widget/SinaSectionView;

    invoke-static {v1}, Lcom/zhangdan/preferential/widget/SinaSectionView;->a(Lcom/zhangdan/preferential/widget/SinaSectionView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v5, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020397

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/j;->a:Lcom/zhangdan/preferential/widget/SinaSectionView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/j;->a:Lcom/zhangdan/preferential/widget/SinaSectionView;

    invoke-static {v1}, Lcom/zhangdan/preferential/widget/SinaSectionView;->a(Lcom/zhangdan/preferential/widget/SinaSectionView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/j;->a:Lcom/zhangdan/preferential/widget/SinaSectionView;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/widget/i;

    invoke-static {v1, v0}, Lcom/zhangdan/preferential/widget/SinaSectionView;->a(Lcom/zhangdan/preferential/widget/SinaSectionView;Lcom/zhangdan/preferential/widget/i;)V

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/j;->a:Lcom/zhangdan/preferential/widget/SinaSectionView;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/SinaSectionView;->d()V

    return-void

    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/widget/i;

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/j;->a:Lcom/zhangdan/preferential/widget/SinaSectionView;

    iget-object v1, v1, Lcom/zhangdan/preferential/widget/SinaSectionView;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v4, p0, Lcom/zhangdan/preferential/widget/j;->a:Lcom/zhangdan/preferential/widget/SinaSectionView;

    invoke-static {v4}, Lcom/zhangdan/preferential/widget/SinaSectionView;->a(Lcom/zhangdan/preferential/widget/SinaSectionView;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v1, v5, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/zhangdan/preferential/widget/i;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/j;->a:Lcom/zhangdan/preferential/widget/SinaSectionView;

    invoke-static {v0}, Lcom/zhangdan/preferential/widget/SinaSectionView;->a(Lcom/zhangdan/preferential/widget/SinaSectionView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/j;->a:Lcom/zhangdan/preferential/widget/SinaSectionView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/j;->a:Lcom/zhangdan/preferential/widget/SinaSectionView;

    invoke-static {v0}, Lcom/zhangdan/preferential/widget/SinaSectionView;->a(Lcom/zhangdan/preferential/widget/SinaSectionView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method
