.class public Lcom/zhangdan/preferential/utils/ShopListItemGenerator$ViewHolder;
.super Ljava/lang/Object;
.source "ShopListItemGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/utils/ShopListItemGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field address:Landroid/widget/TextView;

.field public direction:Landroid/widget/ImageView;

.field distance:Landroid/widget/TextView;

.field photo:Landroid/widget/ImageView;

.field shopName:Landroid/widget/TextView;

.field star:Lcom/zhangdan/preferential/widget/CustomStarView;

.field final synthetic this$0:Lcom/zhangdan/preferential/utils/ShopListItemGenerator;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/utils/ShopListItemGenerator;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator$ViewHolder;->this$0:Lcom/zhangdan/preferential/utils/ShopListItemGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
