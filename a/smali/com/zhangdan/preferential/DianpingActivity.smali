.class public Lcom/zhangdan/preferential/DianpingActivity;
.super Lcom/zhangdan/preferential/WebActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/preferential/WebActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    const v0, 0x7f0801d8

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/DianpingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/zhangdan/preferential/DianpingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dianping_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://m.dianping.com/shop/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
