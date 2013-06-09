.class final Lcom/zhangdan/app/activities/mailimport/b/d;
.super Lcom/a/a/a/e/a/a;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/mailimport/b/c;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/mailimport/b/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/b/d;->a:Lcom/zhangdan/app/activities/mailimport/b/c;

    invoke-direct {p0}, Lcom/a/a/a/e/a/a;-><init>()V

    iput-object p2, p0, Lcom/zhangdan/app/activities/mailimport/b/d;->b:Ljava/lang/String;

    return-void
.end method

.method private varargs g()Landroid/graphics/Bitmap;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/zhangdan/app/e/d;

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/b/d;->a:Lcom/zhangdan/app/activities/mailimport/b/c;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/mailimport/b/c;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "VerifyCode"

    invoke-direct {v0, v2, v3}, Lcom/zhangdan/app/e/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/e/d;->a()V

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/b/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/e/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Lcom/zhangdan/app/e/e;->a(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v2, v3}, Lcom/zhangdan/app/e/e;->a(Ljava/lang/String;Ljava/io/File;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/b/d;->g()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-super {p0, p1}, Lcom/a/a/a/e/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b/d;->a:Lcom/zhangdan/app/activities/mailimport/b/c;

    invoke-static {v0, p1}, Lcom/zhangdan/app/activities/mailimport/b/c;->a(Lcom/zhangdan/app/activities/mailimport/b/c;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b/d;->a:Lcom/zhangdan/app/activities/mailimport/b/c;

    invoke-static {v0}, Lcom/zhangdan/app/activities/mailimport/b/c;->a(Lcom/zhangdan/app/activities/mailimport/b/c;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/b/d;->a:Lcom/zhangdan/app/activities/mailimport/b/c;

    invoke-static {v0}, Lcom/zhangdan/app/activities/mailimport/b/c;->b(Lcom/zhangdan/app/activities/mailimport/b/c;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/b/d;->a:Lcom/zhangdan/app/activities/mailimport/b/c;

    invoke-static {v1}, Lcom/zhangdan/app/activities/mailimport/b/c;->c(Lcom/zhangdan/app/activities/mailimport/b/c;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
