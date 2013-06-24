.class public Lcom/zhangdan/preferential/widget/TodayView;
.super Landroid/widget/RelativeLayout;
.source "TodayView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mLabelView:Landroid/widget/TextView;

.field private mLabels:[Ljava/lang/String;

.field private mMenuView:Landroid/widget/ListView;

.field private mPopup:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 4

    .prologue
    .line 38
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 39
    const v1, 0x7f0901d5

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/TodayView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zhangdan/preferential/widget/TodayView;->mLabelView:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p0, p0}, Lcom/zhangdan/preferential/widget/TodayView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 42
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TodayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03010d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/zhangdan/preferential/widget/TodayView;->mMenuView:Landroid/widget/ListView;

    .line 43
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TodayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/preferential/widget/TodayView;->mLabels:[Ljava/lang/String;

    .line 44
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TodayView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030055

    iget-object v3, p0, Lcom/zhangdan/preferential/widget/TodayView;->mLabels:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 45
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/TodayView;->mLabels:[Ljava/lang/String;

    invoke-static {}, Lcom/zhangdan/preferential/utils/DateUtils;->getToday()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const-string v3, "\u4eca\u65e5"

    aput-object v3, v1, v2

    .line 46
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/TodayView;->mMenuView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/TodayView;->mMenuView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 48
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "parent"
    .parameter "view"
    .parameter "pos"
    .parameter "id"

    .prologue
    .line 63
    iget-object v3, p0, Lcom/zhangdan/preferential/widget/TodayView;->mLabels:[Ljava/lang/String;

    aget-object v1, v3, p3

    .line 64
    .local v1, label:Ljava/lang/String;
    iget-object v3, p0, Lcom/zhangdan/preferential/widget/TodayView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v3, p0, Lcom/zhangdan/preferential/widget/TodayView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_0

    .line 67
    iget-object v3, p0, Lcom/zhangdan/preferential/widget/TodayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 71
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.zhangdan.preferential.UPDATE_CATEGORY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, intent:Landroid/content/Intent;
    add-int/lit8 v3, p3, 0x1

    invoke-static {v3}, Lcom/zhangdan/preferential/data/TypeConstants;->toTypeConstants(I)I

    move-result v2

    .line 73
    .local v2, type:I
    const-string v3, "type_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TodayView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    .line 52
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/TodayView;->mMenuView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TodayView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TodayView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x154

    invoke-static {v3, v4}, Lcom/zhangdan/preferential/utils/CommonMethod;->toPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/TodayView;->mPopup:Landroid/widget/PopupWindow;

    .line 54
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TodayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 55
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TodayView;->mPopup:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TodayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 57
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TodayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 58
    return v5
.end method
