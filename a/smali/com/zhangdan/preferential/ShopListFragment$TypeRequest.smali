.class Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;
.super Ljava/lang/Object;
.source "ShopListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/ShopListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TypeRequest"
.end annotation


# instance fields
.field request:Lorg/json/JSONObject;

.field final synthetic this$0:Lcom/zhangdan/preferential/ShopListFragment;

.field typeId:I


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/ShopListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/ShopListFragment;Lcom/zhangdan/preferential/ShopListFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;-><init>(Lcom/zhangdan/preferential/ShopListFragment;)V

    return-void
.end method
