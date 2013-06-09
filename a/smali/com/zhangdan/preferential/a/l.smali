.class public final Lcom/zhangdan/preferential/a/l;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/BroadcastReceiver;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/a/l;->c:Ljava/util/List;

    new-instance v0, Lcom/zhangdan/preferential/a/m;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/a/m;-><init>(Lcom/zhangdan/preferential/a/l;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/a/l;->a:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/zhangdan/preferential/a/l;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/a/l;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/a/l;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/a/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/zhangdan/preferential/a/l;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final a(Lcom/zhangdan/preferential/a/n;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/a/l;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/preferential/a/l;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/zhangdan/preferential/a/l;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
