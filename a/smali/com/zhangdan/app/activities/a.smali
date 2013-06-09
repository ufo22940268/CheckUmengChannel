.class public abstract Lcom/zhangdan/app/activities/a;
.super Landroid/support/v4/app/Fragment;


# instance fields
.field protected a:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Landroid/view/View;
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/a;->c_()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/a;->c_()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final c()Lcom/zhangdan/app/ZhangdanApplication;
    .locals 1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final c_()Lcom/zhangdan/app/data/model/l;
    .locals 1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/a;->c()Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->c()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    goto :goto_0
.end method

.method protected final d()Z
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/a;->c()Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->b()Lcom/zhangdan/app/c/a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/zhangdan/app/c/a;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method
