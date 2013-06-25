.class public Lcom/zhangdan/app/data/sharedprefs/BankServiceSharedPreferMgr;
.super Ljava/lang/Object;
.source "BankServiceSharedPreferMgr.java"


# static fields
.field public static final IDNO:Ljava/lang/String; = "idno"

.field public static final PREFERENCES_BANK_SREVICE:Ljava/lang/String; = "bank_service"

.field public static final PREFIX_CARD_LAST_FOUR:Ljava/lang/String; = "card_last_four"

.field public static final PREFIX_CARD_NO:Ljava/lang/String; = "card_no"

.field public static final PREFIX_EMAIL:Ljava/lang/String; = "email"

.field public static final PREFIX_PWD:Ljava/lang/String; = "checkpass"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 46
    const-string v1, "bank_service"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 48
    return-void
.end method

.method public static getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "key"

    .prologue
    .line 31
    const-string v1, "bank_service"

    const/4 v2, 0x0

    invoke-static {p0, v1, p1, v2}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, val:Ljava/lang/String;
    invoke-static {v0}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 36
    if-nez p2, :cond_0

    const-string p2, ""

    .line 37
    :goto_0
    const-string v0, "bank_service"

    invoke-static {p0, v0, p1, p2}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void

    .line 36
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method
