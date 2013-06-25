.class Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ChildViewHolder;
.super Ljava/lang/Object;
.source "CardHistoryExpandListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChildViewHolder"
.end annotation


# instance fields
.field public mLogoImage:Landroid/widget/ImageView;

.field public mName:Landroid/widget/TextView;

.field public mPay:Landroid/widget/TextView;

.field public mTime:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter$ChildViewHolder;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardHistoryExpandListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
