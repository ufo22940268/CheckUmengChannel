.class public Lcom/zhangdan/preferential/AboutActivity;
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

    const v0, 0x7f0801db

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    const-string v0, "http://www.51zhangdan.com/appabout.html?edition=1.0&plat=android&goods=pre&adhide=hide"

    return-object v0
.end method
