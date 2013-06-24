.class Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter;
.super Landroid/widget/BaseAdapter;
.source "BankHotLineActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BankAdapter"
.end annotation


# instance fields
.field private mBankInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BankInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BankInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BankInfo;>;"
    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter;->this$0:Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 84
    iput-object p2, p0, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter;->mBankInfoList:Ljava/util/List;

    .line 85
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter;->mBankInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter;->mBankInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter;->mBankInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter;->mBankInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 101
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 106
    move-object v3, p2

    .line 107
    .local v3, view:Landroid/view/View;
    if-nez v3, :cond_0

    .line 108
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter;->this$0:Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;

    invoke-virtual {v4}, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03009b

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 110
    :cond_0
    const v4, 0x7f09020f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 111
    .local v1, imgBankLogo:Landroid/widget/ImageView;
    const v4, 0x7f0901b2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 112
    .local v2, tvBankName:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/BankInfo;

    .line 113
    .local v0, data:Lcom/zhangdan/app/data/model/BankInfo;
    if-nez v0, :cond_1

    .line 117
    :goto_0
    return-object v3

    .line 115
    :cond_1
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/BankInfo;->getBankIconResId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/BankInfo;->getBankName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x0

    .line 123
    invoke-virtual {p0, p3}, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/data/model/BankInfo;

    .line 124
    .local v3, data:Lcom/zhangdan/app/data/model/BankInfo;
    if-nez v3, :cond_0

    .line 145
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/BankInfo;->getBankId()I

    move-result v0

    .line 127
    .local v0, bankId:I
    iget-object v7, p0, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter;->this$0:Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;

    invoke-virtual {v7}, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0, v9}, Lcom/zhangdan/app/data/db/util/BankServiceDbUtil;->queryBankServiceByServiceType(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v1

    .line 128
    .local v1, bankServiceList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankService;>;"
    invoke-static {v1}, Lcom/zhangdan/app/data/BankServiceJsonUtil;->mergeTelServiceContent(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 129
    .local v6, serviceContentList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BankServiceContent;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 130
    iget-object v8, p0, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter;->this$0:Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zhangdan/app/data/model/BankServiceContent;

    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/BankServiceContent;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/zhangdan/app/util/CommonMethod;->call(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter;->this$0:Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 133
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/String;

    .line 134
    .local v4, desArr:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v7, v4

    if-ge v5, v7, :cond_2

    .line 135
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zhangdan/app/data/model/BankServiceContent;

    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/BankServiceContent;->getDesc()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 134
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 136
    :cond_2
    new-instance v7, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter$1;

    invoke-direct {v7, p0, v6}, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter$1;-><init>(Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter;Ljava/util/List;)V

    invoke-virtual {v2, v4, v7}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 143
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
