.class public Lcom/zhangdan/preferential/utils/EnvironmentChecker;
.super Ljava/lang/Object;
.source "EnvironmentChecker.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/zhangdan/preferential/utils/EnvironmentChecker;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method

.method private checkSdcard()V
    .locals 3

    .prologue
    .line 23
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/sdcard/enniu_51discount"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .end local v0           #dir:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v1

    .line 28
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public check()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/zhangdan/preferential/utils/EnvironmentChecker;->checkSdcard()V

    .line 19
    return-void
.end method
