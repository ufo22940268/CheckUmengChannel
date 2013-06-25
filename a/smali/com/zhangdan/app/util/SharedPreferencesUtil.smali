.class public Lcom/zhangdan/app/util/SharedPreferencesUtil;
.super Ljava/lang/Object;
.source "SharedPreferencesUtil.java"


# static fields
.field public static final DISCOUNT_TIME:Ljava/lang/String; = "discount_time"

.field public static final FILE_NAME:Ljava/lang/String; = "51zhangdan"

.field public static final SMS_TIME:Ljava/lang/String; = "id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 41
    const-string v2, "51zhangdan"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 42
    .local v1, share:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 43
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 45
    return-void
.end method

.method public static getDiscountTime(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 34
    const-wide/16 v0, 0x0

    .line 35
    .local v0, id:J
    const-string v3, "51zhangdan"

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 36
    .local v2, share:Landroid/content/SharedPreferences;
    const-string v3, "discount_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 37
    return-wide v0
.end method

.method public static getSmsTime(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 20
    const-wide/16 v0, 0x0

    .line 21
    .local v0, id:J
    const-string v3, "51zhangdan"

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 22
    .local v2, share:Landroid/content/SharedPreferences;
    const-string v3, "id"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 23
    return-wide v0
.end method

.method public static putDiscountTime(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "time"

    .prologue
    .line 27
    const-string v2, "51zhangdan"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 28
    .local v1, share:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 29
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "discount_time"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 31
    return-void
.end method

.method public static putSmsTime(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "time"

    .prologue
    .line 13
    const-string v2, "51zhangdan"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 14
    .local v1, share:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 15
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "id"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 16
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 17
    return-void
.end method
