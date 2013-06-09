.class public Lcom/zhangdan/preferential/GrouponActivity;
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

    const v0, 0x7f0801d9

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/GrouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/zhangdan/preferential/GrouponActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "groupon_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
