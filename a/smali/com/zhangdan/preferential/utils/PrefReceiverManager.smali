.class public Lcom/zhangdan/preferential/utils/PrefReceiverManager;
.super Ljava/lang/Object;
.source "PrefReceiverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/utils/PrefReceiverManager$OnReceiveListener;
    }
.end annotation


# static fields
.field public static final ACTION_UPDATE_CATEGORY:Ljava/lang/String; = "com.zhangdan.preferential.UPDATE_CATEGORY"

.field public static final ACTION_UPDATE_IMAGE_HIDE:Ljava/lang/String; = "com.zhangdan.preferential.UPDATE_IMAGE_HIDE"

.field public static final ACTION_UPDATE_WEIBO_STATUS:Ljava/lang/String; = "com.zhangdan.preferential.UPDATE_WEIBO_STATUS"

.field public static final EXTRA_MENU_TAG:Ljava/lang/String; = "menu_tag"

.field public static final EXTRA_TYPE_ID:Ljava/lang/String; = "type_id"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/utils/PrefReceiverManager$OnReceiveListener;",
            ">;"
        }
    .end annotation
.end field

.field public mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/utils/PrefReceiverManager;->mListeners:Ljava/util/List;

    .line 43
    new-instance v0, Lcom/zhangdan/preferential/utils/PrefReceiverManager$1;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/utils/PrefReceiverManager$1;-><init>(Lcom/zhangdan/preferential/utils/PrefReceiverManager;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/utils/PrefReceiverManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 35
    iput-object p1, p0, Lcom/zhangdan/preferential/utils/PrefReceiverManager;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/preferential/utils/PrefReceiverManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/PrefReceiverManager;->mListeners:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public registerReceiver(Ljava/lang/String;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/zhangdan/preferential/utils/PrefReceiverManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zhangdan/preferential/utils/PrefReceiverManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 41
    return-void
.end method

.method public setOnReceiveListener(Lcom/zhangdan/preferential/utils/PrefReceiverManager$OnReceiveListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/PrefReceiverManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/PrefReceiverManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zhangdan/preferential/utils/PrefReceiverManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 58
    return-void
.end method
