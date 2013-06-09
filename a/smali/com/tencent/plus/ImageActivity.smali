.class public Lcom/tencent/plus/ImageActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/widget/RelativeLayout;

.field private b:Lcom/tencent/tauth/c;

.field private c:Ljava/lang/String;

.field private d:Landroid/os/Handler;

.field private e:Lcom/tencent/plus/TouchView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Lcom/tencent/plus/MaskView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ProgressBar;

.field private k:I

.field private l:Z

.field private m:J

.field private n:I

.field private o:I

.field private p:Landroid/graphics/Rect;

.field private q:Ljava/lang/String;

.field private r:Landroid/graphics/Bitmap;

.field private s:Landroid/view/View$OnClickListener;

.field private t:Landroid/view/View$OnClickListener;

.field private u:Lcom/tencent/tauth/a;

.field private v:Lcom/tencent/tauth/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x280

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v0, p0, Lcom/tencent/plus/ImageActivity;->k:I

    iput-boolean v0, p0, Lcom/tencent/plus/ImageActivity;->l:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/plus/ImageActivity;->m:J

    iput v2, p0, Lcom/tencent/plus/ImageActivity;->n:I

    iput v2, p0, Lcom/tencent/plus/ImageActivity;->o:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->p:Landroid/graphics/Rect;

    new-instance v0, Lcom/tencent/plus/k;

    invoke-direct {v0, p0}, Lcom/tencent/plus/k;-><init>(Lcom/tencent/plus/ImageActivity;)V

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->s:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/tencent/plus/h;

    invoke-direct {v0, p0}, Lcom/tencent/plus/h;-><init>(Lcom/tencent/plus/ImageActivity;)V

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->t:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/tencent/plus/j;

    invoke-direct {v0, p0}, Lcom/tencent/plus/j;-><init>(Lcom/tencent/plus/ImageActivity;)V

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->u:Lcom/tencent/tauth/a;

    new-instance v0, Lcom/tencent/plus/i;

    invoke-direct {v0, p0}, Lcom/tencent/plus/i;-><init>(Lcom/tencent/plus/ImageActivity;)V

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->v:Lcom/tencent/tauth/a;

    return-void
.end method

.method static synthetic a(Lcom/tencent/plus/ImageActivity;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    iput-object p1, p0, Lcom/tencent/plus/ImageActivity;->p:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-virtual {p0}, Lcom/tencent/plus/ImageActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/tencent/plus/ImageActivity;)Lcom/tencent/plus/MaskView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->h:Lcom/tencent/plus/MaskView;

    return-object v0
.end method

.method private a()V
    .locals 8

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->q:Ljava/lang/String;

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p0}, Lcom/tencent/plus/ImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move v3, v2

    move v2, v0

    move v0, v1

    :goto_0
    mul-int v6, v3, v2

    const/high16 v7, 0x40

    if-le v6, v7, :cond_0

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p0}, Lcom/tencent/plus/ImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->r:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->r:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot read picture: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "\u56fe\u7247\u8bfb\u53d6\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u8be5\u56fe\u7247\u662f\u5426\u6709\u6548"

    invoke-direct {p0, v0, v1}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tencent/plus/ImageActivity;->finish()V

    :goto_1
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/tencent/plus/l;

    invoke-direct {v1, p0}, Lcom/tencent/plus/l;-><init>(Lcom/tencent/plus/ImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->e:Lcom/tencent/plus/TouchView;

    iget-object v2, p0, Lcom/tencent/plus/ImageActivity;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/tencent/plus/TouchView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic a(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 8

    const/16 v7, 0x11

    const/high16 v5, 0x4180

    const/4 v6, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v5}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v5}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p2, :cond_0

    const-string v3, "com.tencent.plus.ic_success.png"

    invoke-direct {p0, v3}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {v0, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v2, v7, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const-string v3, "com.tencent.plus.ic_error.png"

    invoke-direct {p0, v3}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/plus/ImageActivity;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->p:Landroid/graphics/Rect;

    return-object v0
.end method

.method private b()V
    .locals 5

    iget v0, p0, Lcom/tencent/plus/ImageActivity;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/plus/ImageActivity;->k:I

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->b:Lcom/tencent/tauth/c;

    const-string v1, "user/get_simple_userinfo"

    const/4 v2, 0x0

    const-string v3, "GET"

    iget-object v4, p0, Lcom/tencent/plus/ImageActivity;->v:Lcom/tencent/tauth/a;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/tauth/c;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/a;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;)V
    .locals 3

    const-string v0, "&gt;"

    const-string v1, ">"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&lt;"

    const-string v2, "<"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&quot;"

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&#39;"

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&amp;"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->d:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/plus/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/plus/g;-><init>(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic c(Lcom/tencent/plus/ImageActivity;)Lcom/tencent/plus/TouchView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->e:Lcom/tencent/plus/TouchView;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/plus/ImageActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->j:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/plus/ImageActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/plus/ImageActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->f:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/plus/ImageActivity;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->p:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->e:Lcom/tencent/plus/TouchView;

    invoke-virtual {v1}, Lcom/tencent/plus/TouchView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    const/16 v1, 0x9

    new-array v1, v1, [F

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v2, 0x2

    aget v2, v1, v2

    const/4 v4, 0x5

    aget v4, v1, v4

    aget v6, v1, v7

    iget v1, p0, Lcom/tencent/plus/ImageActivity;->n:I

    int-to-float v1, v1

    div-float v0, v1, v0

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->p:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    float-to-int v1, v1

    iget-object v2, p0, Lcom/tencent/plus/ImageActivity;->p:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v2, v4

    div-float/2addr v2, v6

    float-to-int v2, v2

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const v0, 0x44228000

    div-float/2addr v0, v6

    float-to-int v0, v0

    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lcom/tencent/plus/ImageActivity;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->r:Landroid/graphics/Bitmap;

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/tencent/plus/ImageActivity;->n:I

    iget v2, p0, Lcom/tencent/plus/ImageActivity;->o:I

    invoke-static {v0, v7, v7, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x28

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const-string v1, "picture"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->b:Lcom/tencent/tauth/c;

    const-string v2, "user/set_user_face"

    const-string v3, "POST"

    iget-object v4, p0, Lcom/tencent/plus/ImageActivity;->u:Lcom/tencent/tauth/a;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/tencent/tauth/c;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/a;)V

    return-void
.end method

.method static synthetic h(Lcom/tencent/plus/ImageActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/plus/ImageActivity;->l:Z

    return v0
.end method

.method static synthetic i(Lcom/tencent/plus/ImageActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/plus/ImageActivity;->m:J

    return-wide v0
.end method

.method static synthetic j(Lcom/tencent/plus/ImageActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lcom/tencent/plus/ImageActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/tencent/plus/ImageActivity;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/plus/ImageActivity;->l:Z

    return v0
.end method

.method static synthetic m(Lcom/tencent/plus/ImageActivity;)I
    .locals 1

    iget v0, p0, Lcom/tencent/plus/ImageActivity;->k:I

    return v0
.end method

.method static synthetic n(Lcom/tencent/plus/ImageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/plus/ImageActivity;->b()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;J)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "strValue"

    iget-object v2, p0, Lcom/tencent/plus/ImageActivity;->b:Lcom/tencent/tauth/c;

    invoke-virtual {v2}, Lcom/tencent/tauth/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "nValue"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "qver"

    const-string v2, "1.4"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-eqz v1, :cond_0

    const-string v1, "elt"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/plus/ImageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/tencent/plus/f;

    invoke-direct {v2, p0, v1, v0}, Lcom/tencent/plus/f;-><init>(Lcom/tencent/plus/ImageActivity;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/tencent/plus/f;->start()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v5, -0x2

    const/high16 v6, 0x41c0

    const/high16 v10, 0x4190

    const/4 v9, 0x0

    const/4 v8, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/plus/ImageActivity;->requestWindowFeature(I)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/plus/ImageActivity;->setRequestedOrientation(I)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    const/high16 v3, -0x100

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/tencent/plus/TouchView;

    invoke-direct {v3, p0}, Lcom/tencent/plus/TouchView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tencent/plus/ImageActivity;->e:Lcom/tencent/plus/TouchView;

    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->e:Lcom/tencent/plus/TouchView;

    invoke-virtual {v3, v1}, Lcom/tencent/plus/TouchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->e:Lcom/tencent/plus/TouchView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Lcom/tencent/plus/TouchView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->e:Lcom/tencent/plus/TouchView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/tencent/plus/MaskView;

    invoke-direct {v3, p0}, Lcom/tencent/plus/MaskView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tencent/plus/ImageActivity;->h:Lcom/tencent/plus/MaskView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0xe

    invoke-virtual {v3, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xf

    invoke-virtual {v3, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->h:Lcom/tencent/plus/MaskView;

    invoke-virtual {v1, v3}, Lcom/tencent/plus/MaskView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->h:Lcom/tencent/plus/MaskView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x42a0

    invoke-static {p0, v3}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v6}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v6}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "com.tencent.plus.logo.png"

    invoke-direct {p0, v3}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/plus/ImageActivity;->i:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v3, 0x40e0

    invoke-static {p0, v3}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->i:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->i:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x4270

    invoke-static {p0, v3}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "com.tencent.plus.bar.png"

    invoke-direct {p0, v1}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x4120

    invoke-static {p0, v1}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, v1, v1, v9}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/tencent/plus/c;

    invoke-direct {v1, p0, p0}, Lcom/tencent/plus/c;-><init>(Lcom/tencent/plus/ImageActivity;Landroid/content/Context;)V

    const/high16 v3, 0x4160

    invoke-static {p0, v3}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x40e0

    invoke-static {p0, v4}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v4

    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v6, 0x429c

    invoke-static {p0, v6}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x4234

    invoke-static {p0, v7}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    const-string v6, "\u53d6\u6d88"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    invoke-virtual {v5, v3, v4, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Lcom/tencent/plus/c;->b(Landroid/widget/Button;)V

    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/tencent/plus/ImageActivity;->f:Landroid/widget/Button;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v6, 0x429c

    invoke-static {p0, v6}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x4234

    invoke-static {p0, v7}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xb

    invoke-virtual {v5, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v6, p0, Lcom/tencent/plus/ImageActivity;->f:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->f:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->f:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->f:Landroid/widget/Button;

    invoke-virtual {v5, v3, v4, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->f:Landroid/widget/Button;

    const-string v4, "\u9009\u53d6"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->f:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Lcom/tencent/plus/c;->a(Landroid/widget/Button;)V

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "\u79fb\u52a8\u548c\u7f29\u653e"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x4040

    invoke-static {p0, v3}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v9, v3, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->j:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->j:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/plus/ImageActivity;->setContentView(Landroid/view/View;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->d:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/tencent/plus/ImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "picture"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/plus/ImageActivity;->q:Ljava/lang/String;

    const-string v1, "return_activity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/plus/ImageActivity;->c:Ljava/lang/String;

    const-string v1, "appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "access_token"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "expires_in"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "openid"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/plus/ImageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/tencent/tauth/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/c;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/plus/ImageActivity;->b:Lcom/tencent/tauth/c;

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->b:Lcom/tencent/tauth/c;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v3, v6

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tauth/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->b:Lcom/tencent/tauth/c;

    invoke-virtual {v1, v0}, Lcom/tencent/tauth/c;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/plus/ImageActivity;->a()V

    invoke-direct {p0}, Lcom/tencent/plus/ImageActivity;->b()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/plus/ImageActivity;->m:J

    const-string v0, "10653"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;J)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->e:Lcom/tencent/plus/TouchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/plus/TouchView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
