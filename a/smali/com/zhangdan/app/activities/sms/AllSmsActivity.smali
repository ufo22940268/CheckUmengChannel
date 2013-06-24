.class public Lcom/zhangdan/app/activities/sms/AllSmsActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "AllSmsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/sms/AllSmsActivity$IOnEditListener;
    }
.end annotation


# static fields
.field public static final BANK_NAME:Ljava/lang/String; = "bank_name"

.field public static final BILL_ID:Ljava/lang/String; = "bill_id"

.field public static final CARD_NUM:Ljava/lang/String; = "card_num"

.field public static final TRUE_NAME:Ljava/lang/String; = "true_name"


# instance fields
.field private bankName:Ljava/lang/String;

.field private billId:I

.field private cardNum:Ljava/lang/String;

.field private current:I

.field private currentType:I

.field editLis:Lcom/zhangdan/app/activities/sms/AllSmsActivity$IOnEditListener;

.field private mAllSmsAdapter:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

.field private mBillDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/sms/BillData;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mRela:Landroid/widget/RelativeLayout;

.field private mRelativeLayout:Landroid/widget/RelativeLayout;

.field private final size:I

.field private trueName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->currentType:I

    .line 44
    const/16 v0, 0x14

    iput v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->size:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mBillDatas:Ljava/util/List;

    .line 258
    new-instance v0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$2;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity$2;-><init>(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->editLis:Lcom/zhangdan/app/activities/sms/AllSmsActivity$IOnEditListener;

    .line 290
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->currentType:I

    return v0
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->current:I

    return v0
.end method

.method static synthetic access$102(Lcom/zhangdan/app/activities/sms/AllSmsActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->current:I

    return p1
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->billId:I

    return v0
.end method

.method static synthetic access$300(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mBillDatas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Lcom/zhangdan/app/activities/sms/AllSmsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mAllSmsAdapter:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->bankName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->cardNum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->trueName:Ljava/lang/String;

    return-object v0
.end method

.method private initialView()V
    .locals 9

    .prologue
    .line 97
    const v7, 0x7f090039

    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v7, 0x7f09003c

    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f020390

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 99
    const v7, 0x7f0901e3

    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f02000a

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 101
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    .local v2, buffer:Ljava/lang/StringBuffer;
    iget-object v7, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->bankName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 103
    iget-object v7, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->bankName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    :cond_0
    iget-object v7, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->cardNum:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 106
    const-string v7, "["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->cardNum:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    :cond_1
    iget-object v7, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->trueName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 109
    const-string v7, "["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->trueName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    :cond_2
    const v7, 0x7f09003a

    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const v7, 0x7f0901a4

    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const v7, 0x7f0901a3

    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v7, 0x7f0901a5

    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 117
    const v7, 0x7f0901a6

    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 118
    .local v1, bill:Landroid/widget/ImageView;
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v7, 0x7f0901a7

    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 120
    .local v6, pay:Landroid/widget/ImageView;
    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v7, 0x7f0901a8

    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 122
    .local v3, cost:Landroid/widget/ImageView;
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v7, 0x7f0901a9

    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 124
    .local v4, discount:Landroid/widget/ImageView;
    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v7, 0x7f0901aa

    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 126
    .local v5, other:Landroid/widget/ImageView;
    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v7, 0x7f0901ab

    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mListView:Landroid/widget/ListView;

    .line 128
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 129
    .local v0, ap:Lcom/zhangdan/app/ZhangdanApplication;
    new-instance v7, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;-><init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserInfo;)V

    iput-object v7, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mAllSmsAdapter:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    .line 130
    iget-object v7, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mAllSmsAdapter:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    iget-object v8, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mBillDatas:Ljava/util/List;

    invoke-virtual {v7, v8}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->setData(Ljava/util/List;)V

    .line 131
    iget-object v7, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mAllSmsAdapter:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->getCurrentCity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->setSmsBillCity(Ljava/lang/String;)V

    .line 132
    iget-object v7, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mAllSmsAdapter:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    iget-object v8, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->editLis:Lcom/zhangdan/app/activities/sms/AllSmsActivity$IOnEditListener;

    invoke-virtual {v7, v8}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->setListener(Lcom/zhangdan/app/activities/sms/AllSmsActivity$IOnEditListener;)V

    .line 133
    iget-object v7, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mAllSmsAdapter:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    iget-object v7, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mListView:Landroid/widget/ListView;

    new-instance v8, Lcom/zhangdan/app/activities/sms/AllSmsActivity$1;

    invoke-direct {v8, p0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity$1;-><init>(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 159
    return-void
.end method

.method private update()V
    .locals 10

    .prologue
    const/16 v9, 0x14

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 191
    iput v5, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->current:I

    .line 192
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mBillDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 193
    const/4 v1, 0x0

    .line 194
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/BillData;>;"
    iget v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->currentType:I

    if-ne v2, v6, :cond_0

    .line 195
    iget v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->current:I

    iget v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->billId:I

    invoke-static {p0, v2, v9, v3}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->queryBillDataWithSize(Landroid/content/Context;III)Ljava/util/List;

    move-result-object v1

    .line 198
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mBillDatas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 197
    .end local v0           #i:I
    :cond_0
    iget v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->current:I

    iget v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->billId:I

    iget v4, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->currentType:I

    invoke-static {p0, v2, v9, v3, v4}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->queryBillDataWithSize(Landroid/content/Context;IIII)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 201
    .restart local v0       #i:I
    :cond_1
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mAllSmsAdapter:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mBillDatas:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->setData(Ljava/util/List;)V

    .line 202
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mAllSmsAdapter:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->notifyDataSetChanged()V

    .line 203
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mBillDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->current:I

    .line 204
    iget v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->currentType:I

    if-ne v2, v6, :cond_2

    .line 206
    const v2, 0x7f0901a2

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 207
    const v2, 0x7f09003c

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 215
    :goto_2
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mBillDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 216
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mRela:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 220
    :goto_3
    return-void

    .line 211
    :cond_2
    const v2, 0x7f0901a2

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 212
    const v2, 0x7f09003c

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 218
    :cond_3
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mRela:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 298
    invoke-super {p0, p1, p2, p3}, Lcom/zhangdan/app/activities/WrappedActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 299
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 300
    const-string v6, "bill_info"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    .line 301
    .local v4, se:Ljava/io/Serializable;
    if-nez v4, :cond_1

    .line 319
    .end local v4           #se:Ljava/io/Serializable;
    :cond_0
    return-void

    .restart local v4       #se:Ljava/io/Serializable;
    :cond_1
    move-object v0, v4

    .line 303
    check-cast v0, Lcom/zhangdan/app/sms/BillData;

    .line 304
    .local v0, bill:Lcom/zhangdan/app/sms/BillData;
    invoke-virtual {v0}, Lcom/zhangdan/app/sms/BillData;->getId()J

    move-result-wide v2

    .line 305
    .local v2, id:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mBillDatas:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 306
    iget-object v6, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mBillDatas:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zhangdan/app/sms/BillData;

    .line 307
    .local v5, temp:Lcom/zhangdan/app/sms/BillData;
    invoke-virtual {v5}, Lcom/zhangdan/app/sms/BillData;->getId()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_2

    .line 308
    invoke-virtual {v0}, Lcom/zhangdan/app/sms/BillData;->getAmount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/zhangdan/app/sms/BillData;->setAmount(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0}, Lcom/zhangdan/app/sms/BillData;->getBillType()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V

    .line 310
    invoke-virtual {v0}, Lcom/zhangdan/app/sms/BillData;->getRepaymentMonth()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/zhangdan/app/sms/BillData;->setRepaymentMonth(I)V

    .line 311
    invoke-virtual {v0}, Lcom/zhangdan/app/sms/BillData;->getAmount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/zhangdan/app/sms/BillData;->setAmount(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0}, Lcom/zhangdan/app/sms/BillData;->getUsAmount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/zhangdan/app/sms/BillData;->setUsAmount(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0}, Lcom/zhangdan/app/sms/BillData;->getIs_rember()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/zhangdan/app/sms/BillData;->setIs_rember(I)V

    .line 314
    iget-object v6, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mAllSmsAdapter:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    iget-object v7, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mBillDatas:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->setData(Ljava/util/List;)V

    .line 315
    iget-object v6, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mAllSmsAdapter:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    invoke-virtual {v6}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->notifyDataSetChanged()V

    .line 305
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, -0x1

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 225
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    .line 256
    :goto_0
    return-void

    .line 228
    :sswitch_0
    iget v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->currentType:I

    if-ne v1, v2, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->finish()V

    goto :goto_0

    .line 231
    :cond_0
    iput v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->currentType:I

    .line 232
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->update()V

    goto :goto_0

    .line 236
    :sswitch_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->currentType:I

    .line 237
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->update()V

    goto :goto_0

    .line 240
    :sswitch_2
    const/4 v1, 0x1

    iput v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->currentType:I

    .line 241
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->update()V

    goto :goto_0

    .line 244
    :sswitch_3
    const/4 v1, 0x4

    iput v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->currentType:I

    .line 245
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->update()V

    goto :goto_0

    .line 248
    :sswitch_4
    const/4 v1, 0x3

    iput v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->currentType:I

    .line 249
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->update()V

    goto :goto_0

    .line 252
    :sswitch_5
    const/4 v1, 0x2

    iput v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->currentType:I

    .line 253
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->update()V

    goto :goto_0

    .line 225
    :sswitch_data_0
    .sparse-switch
        0x7f090039 -> :sswitch_0
        0x7f0901a3 -> :sswitch_0
        0x7f0901a6 -> :sswitch_1
        0x7f0901a7 -> :sswitch_5
        0x7f0901a8 -> :sswitch_2
        0x7f0901a9 -> :sswitch_3
        0x7f0901aa -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x1

    .line 52
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v3, 0x7f03007d

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 55
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "card_num"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->cardNum:Ljava/lang/String;

    .line 56
    const-string v3, "bank_name"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->bankName:Ljava/lang/String;

    .line 57
    const-string v3, "true_name"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->trueName:Ljava/lang/String;

    .line 58
    const-string v3, "bill_id"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->billId:I

    .line 60
    iget v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->billId:I

    if-ne v3, v4, :cond_0

    if-eqz p1, :cond_0

    .line 61
    const-string v3, "card_num"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->cardNum:Ljava/lang/String;

    .line 62
    const-string v3, "bank_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->bankName:Ljava/lang/String;

    .line 63
    const-string v3, "true_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->trueName:Ljava/lang/String;

    .line 64
    const-string v3, "bill_id"

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->billId:I

    .line 67
    :cond_0
    iget v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->current:I

    const/16 v4, 0x14

    iget v5, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->billId:I

    invoke-static {p0, v3, v4, v5}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->queryBillDataWithSize(Landroid/content/Context;III)Ljava/util/List;

    move-result-object v2

    .line 68
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/BillData;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 69
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mBillDatas:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mBillDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->current:I

    .line 72
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->initialView()V

    .line 73
    const v3, 0x7f0901ac

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mRela:Landroid/widget/RelativeLayout;

    .line 74
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mBillDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mRela:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 79
    :goto_1
    return-void

    .line 77
    :cond_2
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->mRela:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 187
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    .line 188
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, -0x1

    .line 173
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 174
    iget v0, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->currentType:I

    if-eq v0, v1, :cond_0

    .line 175
    iput v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->currentType:I

    .line 176
    invoke-direct {p0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->update()V

    .line 177
    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->finish()V

    .line 182
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/zhangdan/app/activities/WrappedActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onPause()V

    .line 169
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onResume()V

    .line 164
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 85
    const-string v0, "card_num"

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->cardNum:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "bank_name"

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->bankName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "true_name"

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->trueName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "bill_id"

    iget v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->billId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    return-void
.end method
