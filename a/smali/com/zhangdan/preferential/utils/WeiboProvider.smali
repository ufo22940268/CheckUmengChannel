.class public Lcom/zhangdan/preferential/utils/WeiboProvider;
.super Ljava/lang/Object;
.source "WeiboProvider.java"


# static fields
.field public static name:Ljava/lang/String;

.field public static portraitUrl:Ljava/lang/String;

.field public static uid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUid()J
    .locals 2

    .prologue
    .line 30
    sget-wide v0, Lcom/zhangdan/preferential/utils/WeiboProvider;->uid:J

    return-wide v0
.end method

.method public static hasLogin()Z
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/zhangdan/preferential/utils/WeiboProvider;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
