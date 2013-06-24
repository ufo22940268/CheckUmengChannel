.class public Lcom/zhangdan/preferential/widget/TodayDialogView$TodayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TodayDialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/widget/TodayDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TodayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/widget/TodayDialogView;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/widget/TodayDialogView;Landroid/content/Context;II[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[TT;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, this:Lcom/zhangdan/preferential/widget/TodayDialogView$TodayAdapter;,"Lcom/zhangdan/preferential/widget/TodayDialogView$TodayAdapter<TT;>;"
    .local p5, strs:[Ljava/lang/Object;,"[TT;"
    iput-object p1, p0, Lcom/zhangdan/preferential/widget/TodayDialogView$TodayAdapter;->this$0:Lcom/zhangdan/preferential/widget/TodayDialogView;

    .line 77
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 78
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .local p0, this:Lcom/zhangdan/preferential/widget/TodayDialogView$TodayAdapter;,"Lcom/zhangdan/preferential/widget/TodayDialogView$TodayAdapter<TT;>;"
    const v1, 0x7f0902f7

    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, view:Landroid/view/View;
    if-nez p1, :cond_0

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 87
    :goto_0
    return-object v0

    .line 85
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
