.class public Lcom/umeng/update/UpdateResponse;
.super Lcom/umeng/common/net/t;
.source "UpdateResponse.java"


# instance fields
.field public delta:Z

.field public hasUpdate:Z

.field public new_md5:Ljava/lang/String;

.field public patch_md5:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public proto_ver:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public target_size:Ljava/lang/String;

.field public updateLog:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1}, Lcom/umeng/common/net/t;-><init>(Lorg/json/JSONObject;)V

    .line 15
    iput-boolean v0, p0, Lcom/umeng/update/UpdateResponse;->hasUpdate:Z

    .line 19
    iput-object v1, p0, Lcom/umeng/update/UpdateResponse;->updateLog:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/umeng/update/UpdateResponse;->version:Ljava/lang/String;

    .line 47
    iput-boolean v0, p0, Lcom/umeng/update/UpdateResponse;->delta:Z

    .line 56
    :try_start_0
    const-string v0, "update"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "no"

    const-string v1, "update"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string v0, "update_log"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/update/UpdateResponse;->updateLog:Ljava/lang/String;

    .line 59
    const-string v0, "version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/update/UpdateResponse;->version:Ljava/lang/String;

    .line 60
    const-string v0, "path"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/update/UpdateResponse;->path:Ljava/lang/String;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/update/UpdateResponse;->hasUpdate:Z

    .line 64
    const-string v0, "delta"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "proto_ver"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/update/UpdateResponse;->proto_ver:Ljava/lang/String;

    .line 66
    const-string v0, "new_md5"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    .line 67
    const-string v0, "size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/update/UpdateResponse;->size:Ljava/lang/String;

    .line 68
    const-string v0, "target_size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/update/UpdateResponse;->target_size:Ljava/lang/String;

    .line 70
    const-string v0, "delta"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "patch_md5"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/update/UpdateResponse;->patch_md5:Ljava/lang/String;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/update/UpdateResponse;->delta:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0
.end method
