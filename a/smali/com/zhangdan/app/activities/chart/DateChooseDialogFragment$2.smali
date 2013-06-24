.class Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$2;
.super Ljava/lang/Object;
.source "DateChooseDialogFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$2;->this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 111
    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$2;->this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mMaxYear:I
    invoke-static {v2}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->access$300(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;)I

    move-result v2

    sub-int/2addr v2, p3

    add-int/lit8 v1, v2, 0x1

    .line 112
    .local v1, year:I
    const/4 v0, 0x0

    .line 113
    .local v0, month:I
    if-nez p4, :cond_1

    .line 114
    const/4 v0, 0x0

    .line 122
    :goto_0
    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$2;->this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mOnDateChooseListener:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$OnDateChooseListener;
    invoke-static {v2}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->access$000(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;)Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$OnDateChooseListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$2;->this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mOnDateChooseListener:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$OnDateChooseListener;
    invoke-static {v2}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->access$000(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;)Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$OnDateChooseListener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$OnDateChooseListener;->onDateChoosed(II)V

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$2;->this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->dismiss()V

    .line 126
    return v3

    .line 116
    :cond_1
    if-ne p3, v3, :cond_2

    .line 117
    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$2;->this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mCurrMonth:I
    invoke-static {v2}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->access$400(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;)I

    move-result v2

    sub-int/2addr v2, p4

    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 119
    :cond_2
    rsub-int/lit8 v2, p4, 0xc

    add-int/lit8 v0, v2, 0x1

    goto :goto_0
.end method
