.class public Lcom/igexin/sdk/SdkActivity;
.super Landroid/app/Activity;


# static fields
.field public static a:I


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lsdk/b/a/a/b/m;

.field private i:Ljava/lang/String;

.field private j:Landroid/app/AlertDialog$Builder;

.field private k:Landroid/app/Dialog;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Landroid/webkit/WebView;

.field private o:Lsdk/b/a/a/b/o;

.field private p:Lsdk/b/a/a/b/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/igexin/sdk/SdkActivity;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/sdk/SdkActivity;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/igexin/sdk/SdkActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/igexin/sdk/SdkActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    const-string v0, "package:"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/igexin/sdk/SdkActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "groupId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "msgId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "jsonobjstr"

    iget-object v3, p0, Lcom/igexin/sdk/SdkActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "nextActionId"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v1
.end method

.method private static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, v2}, Lsdk/c/a/b/g;->a([CI)[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/igexin/sdk/SdkActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/sdk/SdkActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/igexin/sdk/SdkActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/sdk/SdkActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/igexin/sdk/SdkActivity;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/sdk/SdkActivity;->l:Z

    return v0
.end method

.method static synthetic d(Lcom/igexin/sdk/SdkActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/sdk/SdkActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/igexin/sdk/SdkActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/igexin/sdk/SdkActivity;->n:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/igexin/sdk/SdkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lsdk/b/a/a/c/d;->D:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lsdk/b/a/a/c/d;->C:I

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/igexin/sdk/SdkActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/igexin/sdk/SdkActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x108009b

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    invoke-virtual {p0}, Lcom/igexin/sdk/SdkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lsdk/b/a/a/c/d;->D:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lsdk/b/a/a/c/d;->C:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/igexin/sdk/SdkActivity;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/igexin/sdk/SdkActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lsdk/b/a/a/c/h;->t:Ljava/io/File;

    invoke-virtual {p0}, Lcom/igexin/sdk/SdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/sdk/SdkActivity;->d:Landroid/content/Context;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    iget-object v0, p0, Lcom/igexin/sdk/SdkActivity;->c:Ljava/lang/String;

    const-string v1, "popup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/sdk/SdkActivity;->k:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/sdk/SdkActivity;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    iget-object v0, p0, Lcom/igexin/sdk/SdkActivity;->c:Ljava/lang/String;

    const-string v1, "popup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/sdk/SdkActivity;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/igexin/sdk/SdkActivity;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/igexin/sdk/SdkActivity;->g:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/igexin/sdk/SdkActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/igexin/sdk/SdkActivity;->l:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/igexin/sdk/SdkActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 11

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-virtual {p0}, Lcom/igexin/sdk/SdkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "stop"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/igexin/sdk/SdkActivity;->onDestroy()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "msgid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/igexin/sdk/SdkActivity;->e:Ljava/lang/String;

    const-string v2, "groupid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/igexin/sdk/SdkActivity;->f:Ljava/lang/String;

    const-string v2, "action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/igexin/sdk/SdkActivity;->c:Ljava/lang/String;

    const-string v2, "doactionid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/igexin/sdk/SdkActivity;->g:Ljava/lang/String;

    const-string v2, "jsonobjstr"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/igexin/sdk/SdkActivity;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/igexin/sdk/SdkActivity;->c:Ljava/lang/String;

    const-string v3, "popup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v1, "img"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igexin/sdk/SdkActivity;->i:Ljava/lang/String;

    const-string v1, "imgname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igexin/sdk/SdkActivity;->m:Ljava/lang/String;

    const-string v1, "popupBean"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lsdk/b/a/a/b/m;

    iput-object v0, p0, Lcom/igexin/sdk/SdkActivity;->h:Lsdk/b/a/a/b/m;

    iget-object v7, p0, Lcom/igexin/sdk/SdkActivity;->h:Lsdk/b/a/a/b/m;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lsdk/b/a/a/b/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v7}, Lsdk/b/a/a/b/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/sdk/SdkActivity;->j:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/igexin/sdk/SdkActivity;->i:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/igexin/sdk/SdkActivity;->i:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v7}, Lsdk/b/a/a/b/m;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SdkActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getDownloadImgCache SdkActivity pop getImg_src = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lsdk/b/a/a/c/d;->I:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/igexin/sdk/SdkActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/igexin/sdk/SdkActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_f

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v1, 0x0

    sget v4, Lsdk/b/a/a/c/d;->D:I

    int-to-double v4, v4

    const-wide/high16 v9, 0x4089

    div-double/2addr v4, v9

    const-wide v9, 0x4075e00000000000L

    mul-double/2addr v4, v9

    int-to-double v9, v3

    div-double v3, v4, v9

    sget v5, Lsdk/b/a/a/c/d;->C:I

    int-to-double v5, v5

    const-wide/high16 v9, 0x407e

    div-double/2addr v5, v9

    const-wide v9, 0x4075e00000000000L

    mul-double/2addr v5, v9

    int-to-double v9, v2

    div-double/2addr v5, v9

    const-wide/high16 v9, 0x3ff0

    cmpl-double v2, v3, v9

    if-ltz v2, :cond_9

    const-wide/high16 v9, 0x3ff0

    cmpl-double v2, v5, v9

    if-ltz v2, :cond_9

    const/high16 v1, 0x3f80

    :cond_3
    :goto_3
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setMaxHeight(I)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/igexin/sdk/SdkActivity;->j:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    :cond_4
    invoke-virtual {v7}, Lsdk/b/a/a/b/m;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v7}, Lsdk/b/a/a/b/m;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/b/a/a/b/e;

    iget-object v1, p0, Lcom/igexin/sdk/SdkActivity;->j:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lsdk/b/a/a/b/e;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/igexin/sdk/f;

    invoke-direct {v2, p0, v7}, Lcom/igexin/sdk/f;-><init>(Lcom/igexin/sdk/SdkActivity;Lsdk/b/a/a/b/m;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_5
    invoke-virtual {v7}, Lsdk/b/a/a/b/m;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_6

    invoke-virtual {v7}, Lsdk/b/a/a/b/m;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/b/a/a/b/e;

    iget-object v1, p0, Lcom/igexin/sdk/SdkActivity;->j:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lsdk/b/a/a/b/e;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/igexin/sdk/g;

    invoke-direct {v2, p0, v7}, Lcom/igexin/sdk/g;-><init>(Lcom/igexin/sdk/SdkActivity;Lsdk/b/a/a/b/m;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_6
    invoke-virtual {v7}, Lsdk/b/a/a/b/m;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_7

    invoke-virtual {v7}, Lsdk/b/a/a/b/m;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/b/a/a/b/e;

    iget-object v1, p0, Lcom/igexin/sdk/SdkActivity;->j:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lsdk/b/a/a/b/e;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/igexin/sdk/h;

    invoke-direct {v2, p0, v7}, Lcom/igexin/sdk/h;-><init>(Lcom/igexin/sdk/SdkActivity;Lsdk/b/a/a/b/m;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_7
    iget-object v0, p0, Lcom/igexin/sdk/SdkActivity;->j:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/sdk/SdkActivity;->k:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/igexin/sdk/SdkActivity;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/igexin/sdk/SdkActivity;->k:Landroid/app/Dialog;

    new-instance v1, Lcom/igexin/sdk/i;

    invoke-direct {v1, p0}, Lcom/igexin/sdk/i;-><init>(Lcom/igexin/sdk/SdkActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v3

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/igexin/sdk/SdkActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/igexin/sdk/SdkActivity;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_2

    :cond_9
    const-wide/high16 v9, 0x3ff0

    cmpl-double v2, v3, v9

    if-ltz v2, :cond_a

    const-wide/high16 v9, 0x3ff0

    cmpg-double v2, v5, v9

    if-gez v2, :cond_a

    double-to-float v1, v5

    goto/16 :goto_3

    :cond_a
    const-wide/high16 v9, 0x3ff0

    cmpg-double v2, v3, v9

    if-gez v2, :cond_b

    const-wide/high16 v9, 0x3ff0

    cmpl-double v2, v5, v9

    if-gez v2, :cond_c

    :cond_b
    const-wide/high16 v9, 0x3ff0

    cmpg-double v2, v3, v9

    if-gez v2, :cond_3

    const-wide/high16 v9, 0x3ff0

    cmpg-double v2, v5, v9

    if-gez v2, :cond_3

    cmpl-double v1, v3, v5

    if-lez v1, :cond_c

    double-to-float v1, v5

    goto/16 :goto_3

    :cond_c
    double-to-float v1, v3

    goto/16 :goto_3

    :cond_d
    iget-object v2, p0, Lcom/igexin/sdk/SdkActivity;->c:Ljava/lang/String;

    const-string v3, "popupweb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "popupWebBean"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lsdk/b/a/a/b/n;

    iput-object v0, p0, Lcom/igexin/sdk/SdkActivity;->p:Lsdk/b/a/a/b/n;

    iget-object v2, p0, Lcom/igexin/sdk/SdkActivity;->p:Lsdk/b/a/a/b/n;

    const-string v0, "showWebDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "intent = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/igexin/sdk/SdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igexin/sdk/SdkActivity;->n:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/igexin/sdk/SdkActivity;->n:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/igexin/sdk/SdkActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/igexin/sdk/SdkActivity;->n:Landroid/webkit/WebView;

    const/high16 v3, 0x200

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/igexin/sdk/SdkActivity;->n:Landroid/webkit/WebView;

    new-instance v3, Lcom/igexin/sdk/j;

    invoke-direct {v3, p0}, Lcom/igexin/sdk/j;-><init>(Lcom/igexin/sdk/SdkActivity;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/igexin/sdk/SdkActivity;->n:Landroid/webkit/WebView;

    new-instance v3, Lcom/igexin/sdk/k;

    invoke-direct {v3, p0}, Lcom/igexin/sdk/k;-><init>(Lcom/igexin/sdk/SdkActivity;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/igexin/sdk/SdkActivity;->n:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "msgid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igexin/sdk/SdkActivity;->e:Ljava/lang/String;

    const-string v1, "groupid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igexin/sdk/SdkActivity;->f:Ljava/lang/String;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "showWebDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "url = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lsdk/b/a/a/b/n;->c()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v2}, Lsdk/b/a/a/b/n;->a()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/igexin/sdk/SdkActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/sdk/SdkActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/igexin/sdk/SdkMainService;->B:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/b/a/a/b/o;

    iput-object v0, p0, Lcom/igexin/sdk/SdkActivity;->o:Lsdk/b/a/a/b/o;

    iget-object v7, p0, Lcom/igexin/sdk/SdkActivity;->n:Landroid/webkit/WebView;

    new-instance v0, Lcom/igexin/sdk/b;

    iget-object v2, p0, Lcom/igexin/sdk/SdkActivity;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/igexin/sdk/SdkActivity;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/igexin/sdk/SdkActivity;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/igexin/sdk/SdkActivity;->o:Lsdk/b/a/a/b/o;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/igexin/sdk/b;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lsdk/b/a/a/b/o;)V

    const-string v1, "sdk"

    invoke-virtual {v7, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/sdk/SdkActivity;->n:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    move-object v6, v0

    goto :goto_4

    :cond_f
    move-object v0, v1

    goto/16 :goto_2
.end method
