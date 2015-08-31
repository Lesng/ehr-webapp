package net.tenoner.ehr.saas.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import net.tenoner.ehr.saas.domain.RegistedCompany;
import net.tenoner.ehr.saas.service.RegistedCompanyService;

import org.macula.core.exception.FormBindException;
import org.macula.core.mvc.annotation.FormBean;
import org.macula.core.mvc.annotation.OpenApi;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class RegistedCompanyManagerController extends AdminSaasManagerController {

	@Autowired
	private RegistedCompanyService registedCompanyService;

	@RequestMapping(value = "/company/list", method = RequestMethod.GET)
	public String list(HttpServletRequest request) {
		return super.getRelativePath("/company/list");
	}

	@RequestMapping(value = "/company/datas", method = RequestMethod.GET)
	@OpenApi
	public Page<RegistedCompany> getCompanys(@RequestParam(required = false, value = "q") String keywords, Pageable page) {
		return registedCompanyService.findCompanys(keywords, page);
	}

	@RequestMapping(value = "/company/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable("id") Long id, Model model, HttpServletRequest request) {
		model.addAttribute("id", id);
		return super.getRelativePath("/company/edit");
	}

	@RequestMapping(value = "/company/create", method = RequestMethod.GET)
	public String create() {
		return super.getRelativePath("/company/edit");
	}

	@RequestMapping(value = "/company/get/{id}", method = RequestMethod.GET)
	@OpenApi
	public RegistedCompany getRegistedCompany(@PathVariable("id") RegistedCompany company) {
		if (company == null) {
			company = new RegistedCompany();
		}
		return company;
	}

	@RequestMapping(value = "/company/save", method = RequestMethod.POST)
	@OpenApi
	public Long save(@FormBean("company") @Valid RegistedCompany company) {
		if (hasErrors()) {
			throw new FormBindException(getMergedBindingResults());
		}
		return registedCompanyService.saveRegistedCompany(company);
	}

	@RequestMapping(value = "/company/delete/{id}", method = RequestMethod.POST)
	@OpenApi
	public Long delete(@PathVariable("id") RegistedCompany company) {
		registedCompanyService.deleteRegistedCompany(company);
		return company.getId();
	}

}
