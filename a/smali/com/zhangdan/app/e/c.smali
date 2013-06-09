.class public final Lcom/zhangdan/app/e/c;
.super Lcom/zhangdan/app/e/a;

# interfaces
.implements Lcom/zhangdan/app/e/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    const/16 v3, 0x64

    new-instance v0, Ljava/io/File;

    const-string v1, "avatar"

    invoke-static {v1}, Lcom/zhangdan/app/e/d;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lcom/zhangdan/app/e/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v3, v3}, Lcom/zhangdan/app/e/a;-><init>(Landroid/app/Activity;Ljava/io/File;II)V

    invoke-virtual {p0, p0}, Lcom/zhangdan/app/e/c;->a(Lcom/zhangdan/app/e/b;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/zhangdan/app/widget/AvatarView;)V
    .locals 4

    invoke-static {p0}, Lcom/zhangdan/app/data/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->f()Lcom/a/a/a/a;

    move-result-object v1

    const v2, 0x7f020091

    invoke-static {p0, v2}, Lcom/a/a/a/f/b;->a(Landroid/content/Context;I)Lcom/a/a/a/f/b;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/a/a/a/f/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zhangdan/app/widget/AvatarView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/a/a/a/a;->a()Lcom/a/a/a/e/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/a/a/a/e/b;->a(Landroid/widget/ImageView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->f()Lcom/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/a/a;->c()Lcom/a/a/a/b/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/a/a/a/b/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v2}, Lcom/zhangdan/app/widget/AvatarView;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/a/a/a/b/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v2}, Lcom/zhangdan/app/widget/AvatarView;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;Ljava/io/File;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0, p2}, Lcom/zhangdan/app/e/c;->a(Landroid/graphics/Bitmap;Ljava/io/File;)V

    iget-object v0, p0, Lcom/zhangdan/app/e/c;->a:Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/data/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zhangdan.app.download_avatar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/e/c;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
