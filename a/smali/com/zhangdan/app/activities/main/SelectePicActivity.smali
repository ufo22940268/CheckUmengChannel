.class public Lcom/zhangdan/app/activities/main/SelectePicActivity;
.super Lcom/zhangdan/app/activities/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhangdan/app/e/b;


# instance fields
.field private final a:[I

.field private final b:[I

.field private c:Landroid/widget/GridView;

.field private d:Landroid/widget/ImageView;

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Bitmap;

.field private h:Ljava/lang/String;

.field private i:Lcom/zhangdan/app/e/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseActivity;-><init>()V

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->a:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->b:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->f:I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x3ct 0x1t 0x2t 0x7ft
        0x6t 0x1t 0x2t 0x7ft
        0x5dt 0x3t 0x2t 0x7ft
        0x5et 0x3t 0x2t 0x7ft
        0x5ft 0x3t 0x2t 0x7ft
        0x60t 0x3t 0x2t 0x7ft
        0x61t 0x3t 0x2t 0x7ft
        0x62t 0x3t 0x2t 0x7ft
        0x63t 0x3t 0x2t 0x7ft
        0x5bt 0x3t 0x2t 0x7ft
        0x5ct 0x3t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0xe2t 0x0t 0x2t 0x7ft
        0xe3t 0x0t 0x2t 0x7ft
        0xe4t 0x0t 0x2t 0x7ft
        0xe5t 0x0t 0x2t 0x7ft
        0xe6t 0x0t 0x2t 0x7ft
        0xe7t 0x0t 0x2t 0x7ft
        0xe8t 0x0t 0x2t 0x7ft
        0xe0t 0x0t 0x2t 0x7ft
        0xe1t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/main/SelectePicActivity;I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->f:I

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/main/SelectePicActivity;Lcom/zhangdan/app/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->i:Lcom/zhangdan/app/e/f;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/main/SelectePicActivity;)[I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->a:[I

    return-object v0
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/main/SelectePicActivity;)[I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->b:[I

    return-object v0
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/main/SelectePicActivity;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->f:I

    return v0
.end method

.method static synthetic d(Lcom/zhangdan/app/activities/main/SelectePicActivity;)Lcom/zhangdan/app/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->i:Lcom/zhangdan/app/e/f;

    return-object v0
.end method

.method static synthetic e(Lcom/zhangdan/app/activities/main/SelectePicActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->e:I

    return-void
.end method

.method private f()V
    .locals 2

    iget v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->e:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->d:Landroid/widget/ImageView;

    iget v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/zhangdan/app/activities/main/SelectePicActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->f()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;Ljava/io/File;)V
    .locals 2

    if-nez p1, :cond_1

    const-string v0, "\u5f88\u62b1\u6b49\uff0c\u526a\u5207\u56fe\u7247\u5931\u8d25"

    invoke-static {p0, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->g:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->g:Landroid/graphics/Bitmap;

    :cond_2
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->g:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->g:Landroid/graphics/Bitmap;

    invoke-static {v0, p2}, Lcom/zhangdan/app/e/f;->a(Landroid/graphics/Bitmap;Ljava/io/File;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->e:I

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->h:Ljava/lang/String;

    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->f()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/zhangdan/app/activities/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->i:Lcom/zhangdan/app/e/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->i:Lcom/zhangdan/app/e/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zhangdan/app/e/f;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->finish()V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->e:I

    const-string v1, "card"

    const-string v2, "main_bg_type"

    invoke-static {p0, v1, v2, v0}, Lcom/zhangdan/app/data/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->e:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->f:I

    invoke-static {p0, v0}, Lcom/zhangdan/app/data/a/b;->b(Landroid/content/Context;I)V

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/zhangdan/app/data/a/b;->c(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zhangdan/app/data/a/b;->b(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->h:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/zhangdan/app/data/a/b;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0600eb
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const v2, 0x7f0200e7

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03003a

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/zhangdan/app/data/a/b;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->e:I

    iget v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->e:I

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/zhangdan/app/data/a/b;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->f:I

    iget v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->f:I

    if-nez v0, :cond_0

    iput v2, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->f:I

    :cond_0
    :goto_0
    const v0, 0x7f0600eb

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0600ed

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0600e9

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->f()V

    const v0, 0x7f0600ee

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/main/SelectePicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->c:Landroid/widget/GridView;

    new-instance v0, Lcom/zhangdan/app/activities/main/t;

    invoke-direct {v0, p0, p0}, Lcom/zhangdan/app/activities/main/t;-><init>(Lcom/zhangdan/app/activities/main/SelectePicActivity;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->c:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->c:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/zhangdan/app/data/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zhangdan/app/h/d;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->g:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->g:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->e:I

    iput v2, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->f:I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->g:Landroid/graphics/Bitmap;

    :cond_0
    iput-object v1, p0, Lcom/zhangdan/app/activities/main/SelectePicActivity;->i:Lcom/zhangdan/app/e/f;

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onResume()V

    return-void
.end method
