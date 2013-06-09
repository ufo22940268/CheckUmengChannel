.class public Lcom/zhangdan/preferential/TestActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030102

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/TestActivity;->setContentView(I)V

    new-instance v0, Lcom/weibo/sdk/android/a/a;

    invoke-static {p0}, Lcom/zhangdan/preferential/a/a;->a(Landroid/content/Context;)Lcom/weibo/sdk/android/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/weibo/sdk/android/a/a;-><init>(Lcom/weibo/sdk/android/a;)V

    const-string v1, "testtesttesttesta"

    const-string v2, "/sdcard/a1.png"

    const-string v3, "90.0"

    const-string v4, "90.0"

    new-instance v5, Lcom/zhangdan/preferential/bq;

    invoke-direct {v5, p0}, Lcom/zhangdan/preferential/bq;-><init>(Lcom/zhangdan/preferential/TestActivity;)V

    invoke-virtual/range {v0 .. v5}, Lcom/weibo/sdk/android/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/net/g;)V

    return-void
.end method
