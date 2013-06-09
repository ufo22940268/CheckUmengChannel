.class public final Lcom/zhangdan/preferential/data/a;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 2

    new-instance v0, Lcom/zhangdan/preferential/a/u;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/a/u;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/zhangdan/preferential/a/u;->a()Z

    move-result v0

    sget v1, Lcom/zhangdan/preferential/data/a;->a:I

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
