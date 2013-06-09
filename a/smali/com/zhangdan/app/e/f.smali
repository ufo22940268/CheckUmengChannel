.class public final Lcom/zhangdan/app/e/f;
.super Lcom/zhangdan/app/e/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    const/16 v3, 0xfa

    new-instance v0, Ljava/io/File;

    const-string v1, "bg"

    invoke-static {v1}, Lcom/zhangdan/app/e/d;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lcom/zhangdan/app/e/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v3, v3}, Lcom/zhangdan/app/e/a;-><init>(Landroid/app/Activity;Ljava/io/File;II)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 5

    const v0, 0x7f0200e7

    invoke-static {p0}, Lcom/zhangdan/app/data/a/b;->b(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/zhangdan/app/data/a/b;->c(Landroid/content/Context;)I

    move-result v1

    if-gtz v1, :cond_4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void

    :cond_0
    invoke-static {p0}, Lcom/zhangdan/app/data/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/zhangdan/app/h/d;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v2}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->f()Lcom/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/a/a;->c()Lcom/a/a/a/b/a;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/a/a/a/b/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-interface {v3, v2, v1}, Lcom/a/a/a/b/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method
