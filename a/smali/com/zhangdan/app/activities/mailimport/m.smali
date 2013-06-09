.class public final Lcom/zhangdan/app/activities/mailimport/m;
.super Lcom/a/a/a/e/a/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/zhangdan/app/activities/mailimport/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/a/e/a/a;-><init>()V

    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/m;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final bridge varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/m;->b:Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/m;->c:Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v2, p1, v0

    const/4 v0, 0x3

    aget-object v3, p1, v0

    const/4 v0, 0x4

    aget-object v4, p1, v0

    const/4 v0, 0x5

    aget-object v5, p1, v0

    const/4 v0, 0x6

    aget-object v6, p1, v0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/m;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/m;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/zhangdan/app/activities/mailimport/m;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/zhangdan/app/h/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/zhangdan/app/b/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/ac;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 1

    invoke-super {p0}, Lcom/a/a/a/e/a/a;->a()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/m;->d:Lcom/zhangdan/app/activities/mailimport/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/m;->d:Lcom/zhangdan/app/activities/mailimport/n;

    invoke-interface {v0}, Lcom/zhangdan/app/activities/mailimport/n;->b()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/zhangdan/app/activities/mailimport/n;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/m;->d:Lcom/zhangdan/app/activities/mailimport/n;

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/zhangdan/app/data/model/http/ac;

    invoke-super {p0, p1}, Lcom/a/a/a/e/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/m;->d:Lcom/zhangdan/app/activities/mailimport/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/m;->d:Lcom/zhangdan/app/activities/mailimport/n;

    invoke-interface {v0, p1}, Lcom/zhangdan/app/activities/mailimport/n;->a(Lcom/zhangdan/app/data/model/http/ac;)V

    :cond_0
    return-void
.end method
