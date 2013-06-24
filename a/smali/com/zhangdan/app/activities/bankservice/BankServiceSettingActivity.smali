.class public Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "BankServiceSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$SettingTypeComparator;
    }
.end annotation


# static fields
.field public static final EXTRA_KEY_SERVICE_BANK_ID:Ljava/lang/String; = "bank_id"

.field public static final EXTRA_KEY_SERVICE_TYPE:Ljava/lang/String; = "service_type"

.field public static final KEY_SETTING_INFO:Ljava/lang/String; = "key_setting_info"


# instance fields
.field private mBankId:I

.field private mEditTextArr:[Landroid/widget/EditText;

.field private mServiceType:I

.field private mSettingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/ServiceSettingType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    .line 243
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->saveSettingData()V

    return-void
.end method

.method private init(Landroid/widget/LinearLayout;)V
    .locals 28
    .parameter "lyoutContent"

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mSettingList:Ljava/util/List;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mSettingList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mSettingList:Ljava/util/List;

    move-object/from16 v24, v0

    new-instance v25, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$SettingTypeComparator;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$SettingTypeComparator;-><init>(Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;)V

    invoke-static/range {v24 .. v25}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mSettingList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [Landroid/widget/EditText;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mEditTextArr:[Landroid/widget/EditText;

    .line 114
    const/4 v13, 0x0

    .line 115
    .local v13, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mSettingList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zhangdan/app/data/ServiceSettingType;

    .line 116
    .local v5, data:Lcom/zhangdan/app/data/ServiceSettingType;
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v15

    .line 117
    .local v15, inflater:Landroid/view/LayoutInflater;
    const v24, 0x7f03008c

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    .line 118
    .local v23, view:Landroid/view/View;
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    const v24, 0x7f0901da

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 121
    .local v21, tvLabel:Landroid/widget/TextView;
    const v24, 0x7f0901db

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 122
    .local v8, etContent:Landroid/widget/EditText;
    const v24, 0x7f0901dc

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 123
    .local v12, imgDropdown:Landroid/widget/ImageView;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/zhangdan/app/data/ServiceSettingType;->getDesc()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\uff1a"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const v24, 0x7f07018d

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v5}, Lcom/zhangdan/app/data/ServiceSettingType;->getDesc()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mEditTextArr:[Landroid/widget/EditText;

    move-object/from16 v24, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13           #index:I
    .local v14, index:I
    aput-object v8, v24, v13

    .line 127
    invoke-virtual {v5}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v24

    sget-object v25, Lcom/zhangdan/app/data/ServiceSettingType;->ID_NO_FULL:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual/range {v25 .. v25}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 128
    const/16 v24, 0x3

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 129
    const-string v16, "idno"

    .line 130
    .local v16, key:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/zhangdan/app/data/sharedprefs/BankServiceSharedPreferMgr;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    .end local v16           #key:Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 195
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    .line 196
    .local v9, etable:Landroid/text/Editable;
    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v9, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v13, v14

    .line 197
    .end local v14           #index:I
    .restart local v13       #index:I
    goto/16 :goto_1

    .line 132
    .end local v9           #etable:Landroid/text/Editable;
    .end local v13           #index:I
    .restart local v14       #index:I
    :cond_3
    invoke-virtual {v5}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v24

    sget-object v25, Lcom/zhangdan/app/data/ServiceSettingType;->CARD_NO:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual/range {v25 .. v25}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 133
    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 134
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "card_no"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mBankId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 135
    .restart local v16       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/zhangdan/app/data/sharedprefs/BankServiceSharedPreferMgr;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 137
    .end local v16           #key:Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v24

    sget-object v25, Lcom/zhangdan/app/data/ServiceSettingType;->CARD_NO_LAST_FOUR:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual/range {v25 .. v25}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 138
    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 139
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "card_last_four"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mBankId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 140
    .restart local v16       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/zhangdan/app/data/sharedprefs/BankServiceSharedPreferMgr;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 141
    .local v22, value:Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->getDataManager()Lcom/zhangdan/app/global/DataManager;

    move-result-object v6

    .line 143
    .local v6, dataMgr:Lcom/zhangdan/app/global/DataManager;
    invoke-virtual {v6}, Lcom/zhangdan/app/global/DataManager;->getUserBankInfoList()Ljava/util/List;

    move-result-object v17

    .line 144
    .local v17, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    if-eqz v17, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_5

    invoke-virtual {v6}, Lcom/zhangdan/app/global/DataManager;->isFakeData()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 145
    :cond_5
    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 147
    :cond_6
    const/16 v20, 0x0

    .line 148
    .local v20, tempList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 149
    .local v3, bank:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBankId()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mBankId:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 150
    if-nez v20, :cond_8

    .line 151
    new-instance v20, Ljava/util/ArrayList;

    .end local v20           #tempList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .restart local v20       #tempList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    :cond_8
    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 155
    .end local v3           #bank:Lcom/zhangdan/app/data/model/UserBankInfo;
    :cond_9
    if-eqz v20, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_b

    .line 156
    :cond_a
    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 158
    :cond_b
    invoke-static/range {v22 .. v22}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 159
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual/range {v24 .. v24}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :cond_c
    move-object/from16 v4, v20

    .line 161
    .local v4, bankList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    new-instance v24, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v8}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$1;-><init>(Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;Ljava/util/List;Landroid/widget/EditText;)V

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 183
    .end local v4           #bankList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    .end local v6           #dataMgr:Lcom/zhangdan/app/global/DataManager;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v16           #key:Ljava/lang/String;
    .end local v17           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    .end local v20           #tempList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    .end local v22           #value:Ljava/lang/String;
    :cond_d
    invoke-virtual {v5}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v24

    sget-object v25, Lcom/zhangdan/app/data/ServiceSettingType;->CHECK_PWD:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual/range {v25 .. v25}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    .line 184
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "checkpass"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mBankId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 185
    .restart local v16       #key:Ljava/lang/String;
    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 187
    const/16 v24, 0x82

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 188
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/zhangdan/app/data/sharedprefs/BankServiceSharedPreferMgr;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 189
    .end local v16           #key:Ljava/lang/String;
    :cond_e
    invoke-virtual {v5}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v24

    sget-object v25, Lcom/zhangdan/app/data/ServiceSettingType;->EMAIL:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual/range {v25 .. v25}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 190
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "email"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mBankId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 191
    .restart local v16       #key:Ljava/lang/String;
    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/zhangdan/app/data/sharedprefs/BankServiceSharedPreferMgr;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 200
    .end local v5           #data:Lcom/zhangdan/app/data/ServiceSettingType;
    .end local v8           #etContent:Landroid/widget/EditText;
    .end local v12           #imgDropdown:Landroid/widget/ImageView;
    .end local v14           #index:I
    .end local v15           #inflater:Landroid/view/LayoutInflater;
    .end local v16           #key:Ljava/lang/String;
    .end local v21           #tvLabel:Landroid/widget/TextView;
    .end local v23           #view:Landroid/view/View;
    .restart local v13       #index:I
    :cond_f
    new-instance v19, Landroid/widget/Button;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 201
    .local v19, submitBtn:Landroid/widget/Button;
    const v24, 0x7f020126

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 202
    const v24, 0x7f07018e

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 203
    const v24, -0xa39a94

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 204
    const/high16 v24, 0x4180

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 205
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v24, -0x1

    const/16 v25, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 206
    .local v18, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 207
    .local v7, dm:Landroid/util/DisplayMetrics;
    const/high16 v24, 0x4170

    iget v0, v7, Landroid/util/DisplayMetrics;->density:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 208
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    new-instance v24, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$2;-><init>(Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private onFinish()V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->finish()V

    .line 105
    const v0, 0x7f040005

    const v1, 0x7f040006

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->overridePendingTransition(II)V

    .line 106
    return-void
.end method

.method private saveSettingData()V
    .locals 8

    .prologue
    .line 218
    iget-object v5, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mEditTextArr:[Landroid/widget/EditText;

    if-nez v5, :cond_0

    .line 241
    :goto_0
    return-void

    .line 220
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v5, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mEditTextArr:[Landroid/widget/EditText;

    array-length v5, v5

    if-ge v2, v5, :cond_6

    .line 221
    iget-object v5, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mEditTextArr:[Landroid/widget/EditText;

    aget-object v1, v5, v2

    .line 222
    .local v1, et:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/ServiceSettingType;

    .line 223
    .local v0, data:Lcom/zhangdan/app/data/ServiceSettingType;
    const-string v3, ""

    .line 224
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v5

    sget-object v6, Lcom/zhangdan/app/data/ServiceSettingType;->ID_NO_FULL:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 225
    const-string v3, "idno"

    .line 235
    :cond_1
    :goto_2
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, value:Ljava/lang/String;
    const-string v5, "BankService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {p0, v3, v4}, Lcom/zhangdan/app/data/sharedprefs/BankServiceSharedPreferMgr;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 226
    .end local v4           #value:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v5

    sget-object v6, Lcom/zhangdan/app/data/ServiceSettingType;->CARD_NO:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "card_no"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mBankId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 228
    :cond_3
    invoke-virtual {v0}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v5

    sget-object v6, Lcom/zhangdan/app/data/ServiceSettingType;->CARD_NO_LAST_FOUR:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "card_last_four"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mBankId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 230
    :cond_4
    invoke-virtual {v0}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v5

    sget-object v6, Lcom/zhangdan/app/data/ServiceSettingType;->CHECK_PWD:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 231
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkpass"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mBankId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 232
    :cond_5
    invoke-virtual {v0}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v5

    sget-object v6, Lcom/zhangdan/app/data/ServiceSettingType;->EMAIL:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "email"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mBankId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 239
    .end local v0           #data:Lcom/zhangdan/app/data/ServiceSettingType;
    .end local v1           #et:Landroid/widget/EditText;
    .end local v3           #key:Ljava/lang/String;
    :cond_6
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->setResult(I)V

    .line 240
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->finish()V

    goto/16 :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->onFinish()V

    .line 94
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09008c

    if-ne v0, v1, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->onFinish()V

    .line 101
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v3, 0x7f030028

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->setContentView(I)V

    .line 63
    const v3, 0x7f09008c

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 66
    .local v1, data:Landroid/content/Intent;
    const-string v3, "service_type"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mServiceType:I

    .line 67
    const-string v3, "bank_id"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mBankId:I

    .line 68
    iget v3, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mBankId:I

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    .line 69
    const-string v3, "service_type"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mServiceType:I

    .line 70
    const-string v3, "bank_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mBankId:I

    .line 72
    :cond_0
    const v3, 0x7f09008d

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget v4, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mServiceType:I

    if-nez v4, :cond_1

    const v4, 0x7f07018b

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 76
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 77
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    const-string v3, "key_setting_info"

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/ZhangdanApplication;->getCacheObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mSettingList:Ljava/util/List;

    .line 78
    const-string v3, "key_setting_info"

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/ZhangdanApplication;->removeCacheObject(Ljava/lang/String;)V

    .line 79
    const v3, 0x7f090092

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 80
    .local v2, lyoutContent:Landroid/widget/LinearLayout;
    invoke-direct {p0, v2}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->init(Landroid/widget/LinearLayout;)V

    .line 82
    return-void

    .line 72
    .end local v0           #app:Lcom/zhangdan/app/ZhangdanApplication;
    .end local v2           #lyoutContent:Landroid/widget/LinearLayout;
    :cond_1
    const v4, 0x7f07018c

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 87
    const-string v0, "service_type"

    iget v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mServiceType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string v0, "bank_id"

    iget v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->mBankId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    return-void
.end method
