.class Lcom/zhangdan/preferential/ShopListFragment$TypeResponse;
.super Ljava/lang/Object;
.source "ShopListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/ShopListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TypeResponse"
.end annotation


# instance fields
.field shops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Shop;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zhangdan/preferential/ShopListFragment;

.field typeId:I


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/ShopListFragment;ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Shop;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p3, shops:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Shop;>;"
    iput-object p1, p0, Lcom/zhangdan/preferential/ShopListFragment$TypeResponse;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput p2, p0, Lcom/zhangdan/preferential/ShopListFragment$TypeResponse;->typeId:I

    .line 388
    iput-object p3, p0, Lcom/zhangdan/preferential/ShopListFragment$TypeResponse;->shops:Ljava/util/List;

    .line 389
    return-void
.end method
