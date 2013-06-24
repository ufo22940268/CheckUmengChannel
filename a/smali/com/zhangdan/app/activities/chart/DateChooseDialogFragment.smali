.class public Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "DateChooseDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$OnDateChooseListener;,
        Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;
    }
.end annotation


# static fields
.field public static final EXTRAK_KEY_FIRST_YEAR:Ljava/lang/String; = "first_year"


# instance fields
.field private mChooseDateAdapter:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;

.field private mCurrMonth:I

.field private mLastExpandIndex:I

.field private mMaxYear:I

.field private mMinYear:I

.field private mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private mOnDateChooseListener:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$OnDateChooseListener;

.field private mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mLastExpandIndex:I

    .line 79
    new-instance v0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$1;-><init>(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 107
    new-instance v0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$2;-><init>(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 238
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;)Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$OnDateChooseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mOnDateChooseListener:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$OnDateChooseListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mLastExpandIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mLastExpandIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;)Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mChooseDateAdapter:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mMaxYear:I

    return v0
.end method

.method static synthetic access$400(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mCurrMonth:I

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 41
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 43
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "first_year"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 44
    .local v2, minYear:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 45
    .local v1, cal:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 46
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 47
    .local v3, year:I
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mCurrMonth:I

    .line 49
    iput v3, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mMaxYear:I

    .line 50
    iget v4, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mMaxYear:I

    if-lt v2, v4, :cond_0

    .line 51
    iget v4, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mMaxYear:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mMaxYear:I

    .line 55
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p0, v6, v4}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->setStyle(II)V

    .line 56
    return-void

    .line 53
    :cond_0
    iput v2, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mMinYear:I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 61
    const v0, 0x7f030077

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 62
    .local v7, view:Landroid/view/View;
    const v0, 0x7f090192

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ExpandableListView;

    .line 63
    .local v6, listView:Landroid/widget/ExpandableListView;
    new-instance v0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget v3, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mMaxYear:I

    iget v4, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mMinYear:I

    iget v5, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mCurrMonth:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;-><init>(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mChooseDateAdapter:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;

    .line 64
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mChooseDateAdapter:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;

    invoke-virtual {v6, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 65
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    invoke-virtual {v6, v0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    invoke-virtual {v6, v0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 67
    return-object v7
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    .line 73
    return-void
.end method

.method public setOnDateChooseListener(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$OnDateChooseListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->mOnDateChooseListener:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$OnDateChooseListener;

    .line 77
    return-void
.end method
