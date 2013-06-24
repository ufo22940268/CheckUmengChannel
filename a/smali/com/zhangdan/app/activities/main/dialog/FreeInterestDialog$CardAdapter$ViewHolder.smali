.class Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FreeInterestDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field imgBankIcon:Landroid/widget/ImageView;

.field progressBar:Lcom/zhangdan/app/widget/CustomProgressBar;

.field final synthetic this$1:Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter;

.field tvBankName:Landroid/widget/TextView;

.field tvCardAvailLimit:Landroid/widget/TextView;

.field tvCardLimit:Landroid/widget/TextView;

.field tvCardNameAndNo:Landroid/widget/TextView;

.field tvFreeDays:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter$ViewHolder;->this$1:Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
