.class final Lcom/zhangdan/app/activities/newimport/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/weibo/sdk/android/g;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/newimport/f;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/newimport/f;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/g;->a:Lcom/zhangdan/app/activities/newimport/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/weibo/sdk/android/a;

    invoke-direct {v2, v0, v1}, Lcom/weibo/sdk/android/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/weibo/sdk/android/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/g;->a:Lcom/zhangdan/app/activities/newimport/f;

    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/f;->a(Lcom/zhangdan/app/activities/newimport/f;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/zhangdan/preferential/a/a;->a(Landroid/content/Context;Lcom/weibo/sdk/android/a;)V

    new-instance v1, Lcom/zhangdan/app/activities/newimport/i;

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/g;->a:Lcom/zhangdan/app/activities/newimport/f;

    invoke-direct {v1, v2, v3}, Lcom/zhangdan/app/activities/newimport/i;-><init>(Lcom/zhangdan/app/activities/newimport/f;I)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/newimport/i;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    :cond_0
    return-void
.end method

.method public final a(Lcom/weibo/sdk/android/k;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/weibo/sdk/android/l;)V
    .locals 0

    return-void
.end method
