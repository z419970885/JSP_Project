package zhang;

import java.util.ArrayList;
import java.util.HashMap;

public class Status {
	private ArrayList<String> zhuangTai;// �����������״̬
	private HashMap<String, ArrayList<String>> tiMu;// �����������״̬��ѡ��

	public Status() {
		// ��ʼ��ֵ
		zhuangTai = new ArrayList<String>();
		tiMu = new HashMap<String, ArrayList<String>>();
		// ������
		String qingKuang = "û�нӵ�Ů���ѵ绰";
		String qingKuang1 = "û����Ů���ѳԷ�";
		String qingKuang2 = "Լ��ٵ�������";
		
		zhuangTai.add(qingKuang);
		zhuangTai.add(qingKuang1);
		zhuangTai.add(qingKuang2);
		// ���ѡ��
		String xuanXiang1 = "���ֻ�������";
		String xuanXiang2 = "���ڴ���Ϸ";
		String xuanXiang3 = "���ڸ�������";
		String xuanXiang4 = "���ڹ���";
		ArrayList<String> temp = new ArrayList<String>();
		// �����м����
		temp.add(xuanXiang4);
		temp.add(xuanXiang3);
		temp.add(xuanXiang2);
		temp.add(xuanXiang1);
		
		String xuanXiang11 = "����������";
		String xuanXiang22 = "�����Ͽ�";
		String xuanXiang33 = "���ڸ�������";
		String xuanXiang44 = "���ڴ���Ϸ";
		tiMu.put(qingKuang, temp);
		
		ArrayList<String> temp1 = new ArrayList<String>();
		// �����м����
		temp1.add(xuanXiang44);
		temp1.add(xuanXiang33);
		temp1.add(xuanXiang22);
		temp1.add(xuanXiang11);
		// �������ѡ�����Hash��
		tiMu.put(qingKuang1, temp1);
		
		String xuanXiang111 = "���ڴ���Ϸ";
		String xuanXiang222 = "����ϴ�·�";
		String xuanXiang333 = "����˯��";
		String xuanXiang444 = "���ڲ�ѯȥ������";
		ArrayList<String> temp2 = new ArrayList<String>();
		temp2.add(xuanXiang444);
		temp2.add(xuanXiang333);
		temp2.add(xuanXiang222);
		temp2.add(xuanXiang111);
		tiMu.put(qingKuang2, temp2);
	}

	public ArrayList<String> getZhuangTi() {
		return zhuangTai;
	}

	public void setZhuangTai(ArrayList<String> zhuangTai) {
		this.zhuangTai = zhuangTai;
	}

	public HashMap<String, ArrayList<String>> getTiMu() {
		return tiMu;
	}
}
