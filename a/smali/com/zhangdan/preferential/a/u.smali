.class public final Lcom/zhangdan/preferential/a/u;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zhangdan/preferential/a/u;->b:Landroid/content/Context;

    const-string v0, "settings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/a/u;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/a/u;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const-string v0, "hide_image"

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/a/u;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    const-string v0, "today_hint"

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/a/u;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 3

    const-string v0, "today_hint"

    iget-object v1, p0, Lcom/zhangdan/preferential/a/u;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
