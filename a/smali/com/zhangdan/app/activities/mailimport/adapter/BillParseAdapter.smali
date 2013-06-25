.class public Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;
.super Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;
.source "BillParseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolderTitle;,
        Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mBillList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/MailBillInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCostTime:Ljava/lang/String;

.field private mHistorySize:I

.field private mNewBillSize:I

.field private mParseDone:Z

.field private mParseTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/MailBillInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, billList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/MailBillInfo;>;"
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mParseDone:Z

    .line 35
    iput v0, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mHistorySize:I

    .line 36
    iput v0, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mNewBillSize:I

    .line 39
    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mBillList:Ljava/util/List;

    .line 41
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mBillList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mBillList:Ljava/util/List;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mBillList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mHistorySize:I

    .line 44
    return-void
.end method

.method private bindContentView(Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolder;Lcom/zhangdan/app/data/model/http/MailBillInfo;ZI)V
    .locals 4
    .parameter "holder"
    .parameter "data"
    .parameter "isHistory"
    .parameter "index"

    .prologue
    .line 141
    iget-object v1, p1, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getMailSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v1, p1, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolder;->tvNo:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    if-eqz p3, :cond_0

    .line 145
    iget-object v1, p1, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolder;->tvDate:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getFormatDislpayTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v1, p1, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolder;->tvState:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v1, p1, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolder;->tvDate:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getFormatDislpayTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v1, p1, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolder;->tvState:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getAnalyseMsg()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, msg:Ljava/lang/String;
    invoke-static {v0}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getStateMsg()Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_1
    iget-object v1, p1, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolder;->tvState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showTitle(Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolderTitle;Z)V
    .locals 4
    .parameter "holder"
    .parameter "isShow"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 191
    iget-object v3, p1, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolderTitle;->imgLeftHole:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    iget-object v3, p1, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolderTitle;->imgRightHole:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    iget-object v3, p1, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolderTitle;->layoutContent:Landroid/view/View;

    if-eqz p2, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v0, p1, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolderTitle;->bottomLine:Landroid/view/View;

    if-eqz p2, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    return-void

    :cond_0
    move v0, v2

    .line 191
    goto :goto_0

    :cond_1
    move v0, v2

    .line 192
    goto :goto_1

    :cond_2
    move v0, v2

    .line 193
    goto :goto_2

    :cond_3
    move v1, v2

    .line 194
    goto :goto_3
.end method


# virtual methods
.method public addCurrList(Lcom/zhangdan/app/data/model/http/MailBillInfo;)V
    .locals 7
    .parameter "data"

    .prologue
    .line 52
    const/4 v2, 0x0

    .line 53
    .local v2, tmp:Lcom/zhangdan/app/data/model/http/MailBillInfo;
    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mBillList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/MailBillInfo;

    .line 54
    .local v0, bill:Lcom/zhangdan/app/data/model/http/MailBillInfo;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getMailId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getMailId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 55
    move-object v2, v0

    .line 59
    .end local v0           #bill:Lcom/zhangdan/app/data/model/http/MailBillInfo;
    :cond_1
    if-eqz v2, :cond_2

    .line 60
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getMailSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setMailSubject(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getMailType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setMailType(I)V

    .line 62
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getFromType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setFromType(I)V

    .line 63
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getAnalyseState()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setAnalyseState(I)V

    .line 64
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getAnalyseMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setAnalyseMsg(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setStatus(I)V

    .line 66
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getStateMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setStateMsg(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getAnalyseTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setAnalyseTime(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setCreateTime(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->notifyDataSetChanged()V

    .line 76
    :goto_0
    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mBillList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mHistorySize:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mNewBillSize:I

    .line 77
    return-void

    .line 72
    :cond_2
    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mBillList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getCountForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mBillList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 2
    .parameter "section"
    .parameter "position"

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mBillList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p2

    add-int/lit8 v0, v1, -0x1

    .line 97
    .local v0, index:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mBillList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mBillList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 100
    .end local v0           #index:I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(II)J
    .locals 2
    .parameter "section"
    .parameter "position"

    .prologue
    .line 105
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "section"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 121
    move-object v3, p3

    .line 122
    .local v3, view:Landroid/view/View;
    if-nez v3, :cond_0

    .line 123
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 124
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03009e

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 125
    new-instance v1, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolder;-><init>(Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;)V

    .line 126
    .local v1, holder:Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolder;
    const v4, 0x7f090216

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 127
    const v4, 0x7f090217

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolder;->tvNo:Landroid/widget/TextView;

    .line 128
    const v4, 0x7f090218

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolder;->tvDate:Landroid/widget/TextView;

    .line 129
    const v4, 0x7f090219

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolder;->tvState:Landroid/widget/TextView;

    .line 130
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 132
    .end local v1           #holder:Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolder;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolder;

    .line 133
    .restart local v1       #holder:Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/MailBillInfo;

    .line 134
    .local v0, data:Lcom/zhangdan/app/data/model/http/MailBillInfo;
    if-nez v0, :cond_1

    .line 137
    :goto_0
    return-object v3

    .line 136
    :cond_1
    if-eqz p1, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->getCountForSection(I)I

    move-result v5

    sub-int/2addr v5, p2

    invoke-direct {p0, v1, v0, v4, v5}, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->bindContentView(Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolder;Lcom/zhangdan/app/data/model/http/MailBillInfo;ZI)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getNewBillSize()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mNewBillSize:I

    return v0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "section"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 160
    move-object v2, p2

    .line 161
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_0

    .line 162
    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 163
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03009f

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 164
    new-instance v0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolderTitle;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolderTitle;-><init>(Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;)V

    .line 165
    .local v0, holder:Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolderTitle;
    const v3, 0x7f09021b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolderTitle;->tvDesc:Landroid/widget/TextView;

    .line 166
    const v3, 0x7f09021c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolderTitle;->tvCount:Landroid/widget/TextView;

    .line 167
    const v3, 0x7f09021e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolderTitle;->tvCostTime:Landroid/widget/TextView;

    .line 168
    const v3, 0x7f09021d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolderTitle;->tvTime:Landroid/widget/TextView;

    .line 169
    const v3, 0x7f09021a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolderTitle;->layoutContent:Landroid/view/View;

    .line 170
    const v3, 0x7f090214

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolderTitle;->imgLeftHole:Landroid/widget/ImageView;

    .line 171
    const v3, 0x7f090215

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolderTitle;->imgRightHole:Landroid/widget/ImageView;

    .line 172
    const v3, 0x7f09021f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolderTitle;->bottomLine:Landroid/view/View;

    .line 173
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 176
    .end local v0           #holder:Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolderTitle;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolderTitle;

    .line 177
    .restart local v0       #holder:Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolderTitle;
    const-string v3, "Bill"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "list \u6210\u529f\u5bfc\u5165..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mCostTime:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mParseTime:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v3, v0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolderTitle;->tvDesc:Landroid/widget/TextView;

    const v4, 0x7f070103

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 179
    iget-object v3, v0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolderTitle;->tvCount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mNewBillSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v3, v0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolderTitle;->tvCostTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mCostTime:Ljava/lang/String;

    invoke-static {v4}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v3, v0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolderTitle;->tvTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mParseTime:Ljava/lang/String;

    invoke-static {v4}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-boolean v3, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mParseDone:Z

    if-eqz v3, :cond_1

    .line 183
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->showTitle(Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolderTitle;Z)V

    .line 187
    :goto_0
    return-object v2

    .line 185
    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->showTitle(Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter$ViewHolderTitle;Z)V

    goto :goto_0
.end method

.method public setParseDone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "costTime"
    .parameter "parseTime"

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mParseDone:Z

    .line 84
    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mCostTime:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->mParseTime:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/adapter/BillParseAdapter;->notifyDataSetChanged()V

    .line 87
    return-void
.end method
